cask "connect-fonts" do
  version "26.0.1"
  sha256 "8e9a90f1f44de535844994eb13625d6f89564b139696041ab9b6211989f944e6"

  url "https://bin.extensis.com/ConnectFonts-M-#{version.dots_to_hyphens}.dmg"
  name "Connect Fonts"
  desc "Font manager"
  homepage "https://www.extensis.com/products/connect"

  livecheck do
    url "https://links.extensis.com/suitcase/sparkle?language=en&platform=mac&version=#{version}"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Connect Fonts.app"

  # Connect Fonts uses many of the same paths as its predecessor, Suitcase Fusion.
  zap trash: [
        "~/.Extensis",
        "~/Documents/Extensis Connect Assets",
        "~/Library/Caches/com.extensis.SuitcaseFusion",
        "~/Library/Extensis",
        "~/Library/HTTPStorages/com.extensis.SuitcaseFusion",
        "~/Library/HTTPStorages/com.extensis.SuitcaseFusion.binarycookies",
        "~/Library/Logs/Extensis",
        "~/Library/Preferences/com.extensis.SuitcaseFusion.plist",
        "~/Library/WebKit/com.extensis.SuitcaseFusion",
      ],
      rmdir: "~/Documents/Extensis Connect Assets"
end
