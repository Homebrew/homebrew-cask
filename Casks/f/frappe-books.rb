cask "frappe-books" do
  arch arm: "arm64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "26ffa956c54a3de41f8768046b6c9c63c7772a0c0b3096578ae06a69f999c8bd",
         intel: "d25923d862e2a98d467f5a2254933828b2559faf5b7cac5e9b18a68c31d5f5e9"

  url "https://github.com/frappe/books/releases/download/v#{version}/Frappe-Books-v#{version}-mac-#{arch}.dmg",
      verified: "github.com/frappe/books/"
  name "Frappe Books"
  desc "Book-keeping software for small businesses and freelancers"
  homepage "https://frappe.io/books/"

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
