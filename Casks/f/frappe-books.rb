cask "frappe-books" do
  arch arm: "arm64", intel: "x64"

  version "0.35.0"
  sha256 arm:   "b605368924b0817dcd6e8ead4c63177241035577ba9d1689d039513e22d2aaed",
         intel: "31f5b1ede222764ddc89cb23e94350123eaee7a2d4fe96a3af089c2a91da857f"

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
