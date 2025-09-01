cask "sunvox" do
  version "2.1.2b"
  sha256 "52b49a29c547de7fc46f08e888f703e135035cc46e166b8816b9f20bfae4144e"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name "SunVox"
  desc "Modular synthesiser"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  livecheck do
    url :homepage
    regex(/href=.*?sunvox[._-]v?(\d+(?:\.\d+)+[a-z]?)\.zip/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :high_sierra"

  app "sunvox/sunvox/macos/SunVox.app"

  zap trash: [
    "/Applications/sunvox_log.txt",
    "~/Library/Application Support/SunVox",
    "~/Library/Preferences/nightradio.SunVox.plist",
    "~/Library/Saved Application State/nightradio.SunVox.savedState",
  ]
end
