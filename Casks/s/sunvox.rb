cask "sunvox" do
  version "2.1.1c"
  sha256 "2df050fdfd97ef96dca8ba77f5cdad75a4a50e6f84ef7194bc1ebc5c5aa289cc"

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
