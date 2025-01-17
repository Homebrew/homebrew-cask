cask "frappe-books" do
  arch arm: "-arm64"

  version "0.26.1"
  sha256 arm:   "1f4f5fdf840defedf0a1b7ffbdeace94d3b16039e2ba77a94fe340861ccb9395",
         intel: "ee0acedff1daabde45ac95cd95b4672d6b2386374151d058cca39794562d1187"

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
