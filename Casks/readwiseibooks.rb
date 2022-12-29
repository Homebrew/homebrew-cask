cask "readwiseibooks" do
  version "1.0"
  sha256 :no_check

  url "https://readwise.io/ibooks/download"
  name "readwiseibooks"
  desc "Readwise Tool to import highlights from Apple Books"
  homepage "https://readwise.io/ibooks"

  app "Readwise_iBooks.app"

  zap trash: [
    "~/Library/Caches/readwise.Readwise-iBooks",
    "~/Library/HTTPStorages/readwise.Readwise-iBooks",
    "~/Library/Preferences/readwise.Readwise-iBooks.plist",
  ]
end
