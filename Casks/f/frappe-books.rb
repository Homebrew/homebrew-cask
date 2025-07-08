cask "frappe-books" do
  arch arm: "-arm64"

  version "0.32.0"
  sha256 arm:   "b2d99e572ce617c3773c0504f51de17e11f6387e3d3f9290b843203016f659cc",
         intel: "ef13568a25c2585d66821747a2ab6cb685469a3ede20f96f8fcc2613ccaf7664"

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
