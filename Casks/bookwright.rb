cask "bookwright" do
  version "2.4.1"
  sha256 "a013943d327be16da1b8028ffbe3a1fc683eacce238f6ee10b4decb0768fb508"

  url "https://software.blurb.com/bookwright_v#{version.major}/#{version}/BookWright.dmg"
  name "bookwright"
  desc "Make a book with this tool and the Blurb printing service"
  homepage "https://www.blurb.com/bookwright"

  livecheck do
    # url "https://www.blurb.com/bookwright-install-mac?platform=MacOS&bwversion=#{version}&download=true"
    # regex(/href=.+www.blurb.com\/booksmart_download\/bookwright?platform=mac&bwversion=(\d+\.\d+\.\d+)/i)

    skip "Unable to get a direct link, it is added via JavaScript within the page."
  end

  app "BookWright.app"

  zap trash: [
    "~/Library/Application Support/com.blurb.bookwright",
    "~/Library/Caches/com.blurb.bookwright",
    "~/Library/HTTPStorages/com.blurb.bookwright",
    "~/Library/Preferences/com.blurb.bookwright.plist",
    "~/Library/Saved Application State/com.blurb.bookwright.savedState",
  ]
end
