cask "frappe-books" do
  arch arm: "arm64", intel: "x64"

  version "0.34.1"
  sha256 arm:   "5104893fbef8f9fa105cc604d4994a7fde0853787444dd8531a0405517223210",
         intel: "377d0ebfeff2a635869bd3bb0b3d2c759c62061e4064aba7a27e641aa3300dec"

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
