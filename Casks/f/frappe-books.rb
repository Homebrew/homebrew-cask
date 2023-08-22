cask "frappe-books" do
  version "0.18.0"
  sha256 "0d01b7dfd9c0d92ac25b764b8e6eb83e7ca6b248c5e2f85afb9488cdf9bb0087"

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
