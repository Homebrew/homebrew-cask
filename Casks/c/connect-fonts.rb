cask "connect-fonts" do
  version "28.1.9"
  sha256 "b74f3eec06a77a91fc5501319940dd61b5c02fe565ae16a1e250ec10104e3d3d"

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
