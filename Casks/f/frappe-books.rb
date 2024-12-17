cask "frappe-books" do
  arch arm: "-arm64"

  version "0.25.1"
  sha256 arm:   "3b7c233a24f05d4c63cf4a4014bee4ed9cc41fa10ea42d4ac847e173b904e41f",
         intel: "692c7c26f71c486598c71b3b7ac0eb2f6fb5112949262985ed2fcbf1f4270433"

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
