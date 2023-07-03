cask "frappe-books" do
  version "0.17.0"
  sha256 "05574db00269d8a880d535c2ef97436a8833feef3e8e84fff6d25e0d62dca9b6"

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
