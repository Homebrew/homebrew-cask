cask "disk-jockey" do
  version "4.1.1"
  sha256 :no_check

  url "https://diskjockey.onegeekarmy.eu/files/diskjockey/Disk-Jockey.app.zip"
  name "Disk Jockey"
  desc "Disk image creator and analyser for retro computers or emulators"
  homepage "https://diskjockey.onegeekarmy.eu/"

  livecheck do
    url "https://diskjockey.onegeekarmy.eu/files/diskjockey/disk-jockey-appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Disk Jockey.app"

  zap trash: [
    "~/Library/Application Scripts/One-Geek-Army.Disk-Jockey",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/one-geek-army.disk-jockey.sfl*",
    "~/Library/Containers/One-Geek-Army.Disk-Jockey",
  ]
end
