cask "frappe-books" do
  arch arm: "-arm64"

  version "0.31.0"
  sha256 arm:   "f20a2f18521b6757dfe459d8808175c2a84c057c1ccfbbca1ca08432790d719c",
         intel: "7e96c1055aaa0ad7bc535efacb936e27b7069e73a8dc2ffb65986b2af294d338"

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
