cask "frappe-books" do
  arch arm: "-arm64"

  version "0.33.1"
  sha256 arm:   "4b66e5cfd7c21121f1abfbe1aa63c91e6f05eb377433a0fb526e47ce6b8fc317",
         intel: "3d2dbffe15efd22dde8806cd97e9ddbde8039cf9478220b5b5d94baecb2ee1d5"

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
