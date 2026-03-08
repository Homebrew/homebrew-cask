cask "easydict" do
  version "2.17.3"
  sha256 "4051a7d109e9968cc281d3525269d03191990d94816aa403b028b1f95dc20cb1"

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
