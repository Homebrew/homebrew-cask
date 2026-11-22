cask "switchbar" do
  version "34.4.0"
  sha256 "385ce54de97c1609fdf16faf6abdff3d2f3ebd9a9e7545b49c641fb2badac207"

  url "https://cdn-2.webcatalog.io/switchbar/Switchbar-#{version}-universal.dmg"
  name "Switchbar"
  desc "Browser and email client picker"
  homepage "https://switchbar.com/en"

  livecheck do
    url "https://cdn-2.webcatalog.io/switchbar/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Switchbar.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.webcatalog.switchbar.sfl*",
    "~/Library/Application Support/Switchbar",
    "~/Library/Preferences/com.webcatalog.switchbar.plist",
  ]
end
