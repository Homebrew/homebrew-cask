cask "frappe-books" do
  arch arm: "-arm64"

  version "0.24.1"
  sha256 arm:   "ccf6404bdbefc8c146ebb8294876f6a159ca3826e52bc3e39249c41f60572b7a",
         intel: "bc80e027c80aa48e420c0f387f1a5ba0065057be34a4b54f33db0984754aea31"

  url "https://github.com/frappe/books/releases/download/v#{version}/Frappe-Books-#{version}#{arch}.dmg",
      verified: "github.com/frappe/books/"
  name "Frappe Books"
  desc "Book-keeping software for small businesses and freelancers"
  homepage "https://frappe.io/books/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Frappe Books.app"

  zap trash: [
    "~/Library/Application Support/frappe-books",
    "~/Library/Preferences/io.frappe.books.plist",
    "~/Library/Saved Application State/io.frappe.books.savedState",
  ]
end
