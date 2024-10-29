cask "frappe-books" do
  arch arm: "-arm64"

  version "0.24.0"
  sha256 arm:   "3b504151b043afdf696710071e9a1a6c82bad5054c7553de8f51d927dd008496",
         intel: "9ac8579aefeb240c720f515edd70d981c8f002dba7a91eadcd43cf675d32ab81"

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
