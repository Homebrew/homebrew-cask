cask "sunvox" do
  version "2.1.3"
  sha256 "fb8adacd99aa6cdde1364e67c85ae6f2433d69f040fac62b48f1f29f66380cca"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name "SunVox"
  desc "Modular synthesiser"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  livecheck do
    url :homepage
    regex(/href=.*?sunvox[._-]v?(\d+(?:\.\d+)+[a-z]?)\.zip/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "sunvox/sunvox/macos/SunVox.app"

  zap trash: [
    "/Applications/sunvox_log.txt",
    "~/Library/Application Support/SunVox",
    "~/Library/Preferences/nightradio.SunVox.plist",
    "~/Library/Saved Application State/nightradio.SunVox.savedState",
  ]
end
