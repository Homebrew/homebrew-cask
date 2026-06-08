cask "lunar" do
  version "6.10.4"
  sha256 "be79c8b73e4f01f0adc20e6ee985e06c001eeaee5e0fbaf6a44faaf149f14f06"

  url "https://files.lunar.fyi/releases/Lunar-#{version}.dmg"
  name "Lunar"
  desc "Adaptive brightness for external displays"
  homepage "https://lunar.fyi/"

  livecheck do
    url "https://static.lunar.fyi/appcast-stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Lunar.app"

  uninstall quit: "fyi.lunar.Lunar"

  zap trash: [
    "~/Library/Application Support/fyi.lunar.Lunar",
    "~/Library/Application Support/Lunar",
    "~/Library/Caches/Lunar",
    "~/Library/Preferences/fyi.lunar.Lunar.plist",
  ]
end
