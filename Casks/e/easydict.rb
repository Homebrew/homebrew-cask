cask "easydict" do
  version "2.17.1"
  sha256 "adfa358bd06a3a84e0c7ad7640e5d97c2244358669672d727afa614feb0466e1"

  url "https://github.com/tisfeng/Easydict/releases/download/#{version}/Easydict.dmg"
  name "Easydict"
  desc "Dictionary and translator app"
  homepage "https://github.com/tisfeng/Easydict/"

  livecheck do
    url "https://raw.githubusercontent.com/tisfeng/Easydict/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
