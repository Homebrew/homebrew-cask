cask "connect-fonts" do
  version "28.1.4"
  sha256 "3bce1e36faad24aa42f4ededb132c78439a3ed69d56bf0ac61e70f2c3b341c91"

  url "https://bin.extensis.com/ConnectFonts-M-#{version.dots_to_hyphens}.dmg"
  name "Connect Fonts"
  desc "Font manager"
  homepage "https://www.extensis.com/products/connect"

  livecheck do
    url "https://links.extensis.com/suitcase/sparkle?language=en&platform=mac&version=#{version}"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
