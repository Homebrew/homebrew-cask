cask "gswitch" do
  version "1.9.7"
  sha256 "5d212c1bd39f6bfae588797fa09b959051dc4eefd26ec05fbd26b798125b976a"

  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip",
      verified: "github.com/CodySchrank/gSwitch/"
  appcast "https://github.com/CodySchrank/gSwitch/releases.atom"
  name "gSwitch"
  homepage "https://codyschrank.github.io/gSwitch/"

  depends_on macos: ">= :sierra"

  app "gSwitch.app"

  zap trash: [
    "~/Library/Caches/gSwitch",
    "~/Library/Preferences/com.CodySchrank.gSwitch.plist",
  ]
end
