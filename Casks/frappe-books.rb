cask "frappe-books" do
  version "0.16.0"
  sha256 "97b63dcc6d2ef07b99d0c36b224655906eb2e8ff7d0354b080897581b0a2d529"

  url "https://github.com/frappe/books/releases/download/v#{version}/Frappe-Books-#{version}.dmg",
      verified: "github.com/frappe/books/"
  name "Frappe Books"
  desc "Free Desktop book-keeping software for small businesses and freelancers"
  homepage "https://frappebooks.com/"

  app "Frappe Books.app"

  zap trash: [
    "~/Library/Preferences/io.frappe.books.plist",
    "~/Library/Saved Application State/io.frappe.books.savedState",
  ]
end
