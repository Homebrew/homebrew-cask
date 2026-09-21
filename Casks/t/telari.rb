cask "telari" do
  version "0.5.8"
  sha256 "f891f80b1d4df4e8cf6297fe5c30631d585e0203a66e77f8f26d249c4d265b8e"

  url "https://dl.telari.app/Telari-#{version}.dmg"
  name "Telari"
  desc "Markdown reader built for typography"
  homepage "https://telari.app/"

  livecheck do
    url "https://dl.telari.app/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  depends_on macos: :ventura

  app "Telari.app"

  uninstall quit: "dev.telari.reader"

  zap trash: [
    "~/.config/telari",
    "~/Library/Application Scripts/dev.telari.reader.quicklook",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.telari.reader.sfl*",
    "~/Library/Caches/dev.telari.reader",
    "~/Library/Containers/dev.telari.reader.quicklook",
    "~/Library/HTTPStorages/dev.telari.reader",
    "~/Library/Preferences/dev.telari.reader.plist",
    "~/Library/WebKit/dev.telari.reader",
  ]
end
