cask "frappe-books" do
  version "0.17.1"
  sha256 "a0febc6abf7e4ff3f81c79add79fd7e63c8643781bccddb1f179309c018cf16a"

  url "https://github.com/frappe/books/releases/download/v#{version}/Frappe-Books-#{version}.dmg",
      verified: "github.com/frappe/books/"
  name "Frappe Books"
  desc "Book-keeping software for small businesses and freelancers"
  homepage "https://frappebooks.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Frappe Books.app"

  zap trash: [
    "~/Library/Application Support/frappe-books",
    "~/Library/Preferences/io.frappe.books.plist",
    "~/Library/Saved Application State/io.frappe.books.savedState",
  ]
end
