cask "frappe-books" do
  arch arm: "-arm64"

  version "0.34.0"
  sha256 arm:   "a8c8c3b8ee99151b1d57b088ea3e0e4e9a3f8f50a95ce107a598e287f048d605",
         intel: "d1326e416c827bc1f83a2b8d2fdbe145edd1ef881a2a0d84fabac78cd287a7c3"

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
