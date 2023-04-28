cask "easydict" do
  version "1.3.0"
  sha256 "bf99ce7f807ca31e38b26d554868db435853075babc999d5bb26c9f2c3201c4f"

  url "https://github.com/tisfeng/Easydict/releases/download/#{version}/Easydict.dmg"
  name "Easydict"
  desc "Dictionary and translator app"
  homepage "https://github.com/tisfeng/Easydict/"

  auto_updates true

  app "Easydict.app"

  zap trash: [
    "~/Library/Application Support/com.izual.Easydict",
    "~/Library/Caches/com.izual.Easydict",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.izual.Easydict",
    "~/Library/HTTPStorages/com.izual.Easydict",
    "~/Library/HTTPStorages/com.izual.Easydict.binarycookies",
    "~/Library/Preferences/com.izual.Easydict.plist",
    "~/Library/WebKit/com.izual.Easydict",
  ]
end
