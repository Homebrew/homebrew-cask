cask "sunvox" do
  version "2.1.2b"
  sha256 "281e98e6e2855ed06b98965c18b3f174b9425e77bf8b06c5c17f5aa64f2c9f6f"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name "SunVox"
  desc "Modular synthesiser"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  livecheck do
    url :homepage
    regex(/href=.*?sunvox[._-]v?(\d+(?:\.\d+)+[a-z]?)\.zip/i)
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
