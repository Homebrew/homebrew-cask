cask "backglow" do
  version "1.2.0"
  sha256 "4deed39245ee07533f11039ca41c65c8668c3888a9c6eae67265d80132730d62"

  url "https://backglow.app/Backglow-#{version}.dmg"
  name "Backglow"
  desc "Menu bar app to control the glowing logo on the MacBook Pro"
  homepage "https://backglow.app/"

  livecheck do
    url "https://backglow.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Backglow.app"

  uninstall quit: "co.supershort.backglow"

  zap trash: [
    "~/Library/Caches/co.supershort.backglow",
    "~/Library/Containers/co.supershort.backglow.control",
    "~/Library/HTTPStorages/co.supershort.backglow",
    "~/Library/Preferences/co.supershort.backglow.plist",
  ]
end
