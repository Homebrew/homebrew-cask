cask "connect-fonts" do
  version "29.0.0"
  sha256 "3f08b605cb61f1f0a51b0106d1cf49a20c6a0e8e723e97394bc2dc13f9f7a285"

  url "https://bin.extensis.com/ConnectFonts-M-#{version.dots_to_hyphens}.dmg"
  name "Connect Fonts"
  desc "Font manager"
  homepage "https://www.extensis.com/products/connect"

  livecheck do
    url "https://links.extensis.com/suitcase/sparkle?language=en&platform=mac&version=#{version}"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Connect Fonts.app"

  uninstall launchctl: "com.extensis.FMCore",
            quit:      "com.extensis.SuitcaseFusion"

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
