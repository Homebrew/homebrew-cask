cask "sunvox" do
  version "2.1.2"
  sha256 "5dfd1aa368cd34c2abdb234952c7ba9a44d99d03d67476db5d809227e3f70344"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name "SunVox"
  desc "Modular synthesiser"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  livecheck do
    url "https://www.warmplace.ru/soft/sunvox/changelog.txt"
    regex(/^v(\d+(?:\.\d+)*[a-z]?)\s*\(\d+/i)
  end

  depends_on macos: ">= :high_sierra"

  app "sunvox/sunvox/macos/SunVox.app"

  zap trash: [
    "/Applications/sunvox_log.txt",
    "~/Library/Application Support/SunVox",
    "~/Library/Preferences/nightradio.SunVox.plist",
    "~/Library/Saved Application State/nightradio.SunVox.savedState",
  ]
end
