cask "tev" do
  on_macos do
    arch intel: "-intel"
  end
  on_linux do
    arch arm: "-arm"
  end

  version "2.12.2"
  sha256 arm:          "acab07c8997f3356cd11f715c8d55be73020d98e813a794ead82121e89e9de8d",
         intel:        "0482eb9e348d6a03c836389dfc48fb81ad99a84842909130bf09cc52020b566a",
         arm64_linux:  "8ecc9b1f9003202f33c437fcaa7e5d01544ad8c85d938781df924ae09b52721d",
         x86_64_linux: "dfecc8900bd8b012e4efd4612791a9eff1d175f6c1b35c75f57a2f232c47a0a7"

  url_end = on_system_conditional linux: ".appimage", macos: ".dmg"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}#{url_end}"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    app "tev.app"
    binary "#{appdir}/tev.app/Contents/MacOS/tev"

    zap trash: "~/Library/Preferences/org.tom94.tev.plist"
  end

  on_linux do
    app_image "tev#{arch}.appimage", target: "tev.AppImage"
  end
end
