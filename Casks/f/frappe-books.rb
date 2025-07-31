cask "frappe-books" do
  arch arm: "-arm64"

  version "0.33.0"
  sha256 arm:   "4e0313d4eb515c8d06344f5d95df22a5d1ab53ebaedd2c6aac2f4ad4df1d684c",
         intel: "b128b5b1612fd173e8660f4e353f5025a31776d867870668475d764167f24ed2"

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
