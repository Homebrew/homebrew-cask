cask "frappe-books" do
  version "0.21.0"
  sha256 "b64508010cabd87033afd8b67e462204beadb61d48d1f534aff6d4817ef6bd56"

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
