cask "frappe-books" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "mac-#{arch}.dmg", linux: "linux-x86_64.AppImage"

  version "0.36.0"

  on_macos do
    sha256 arm:   "26ffa956c54a3de41f8768046b6c9c63c7772a0c0b3096578ae06a69f999c8bd",
           intel: "d25923d862e2a98d467f5a2254933828b2559faf5b7cac5e9b18a68c31d5f5e9"

    app "Frappe Books.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.frappe.books.sfl*",
      "~/Library/Application Support/frappe-books",
      "~/Library/Preferences/io.frappe.books.plist",
      "~/Library/Saved Application State/io.frappe.books.savedState",
    ]
  end
  on_linux do
    sha256 "c079d60b9811b6a2f6f329efe5ba14796c4f4ec6f693efdca39b6376fee79602"

    depends_on arch: :x86_64

    app_image "Frappe-Books-v#{version}-linux-x86_64.AppImage", target: "Frappe Books.AppImage"
  end

  url "https://github.com/frappe/books/releases/download/v#{version}/Frappe-Books-v#{version}-#{url_end}",
      verified: "github.com/frappe/books/"
  name "Frappe Books"
  desc "Book-keeping software for small businesses and freelancers"
  homepage "https://frappe.io/books/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
