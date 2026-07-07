cask "tev" do
  on_macos do
    arch intel: "-intel"
  end
  on_linux do
    arch arm: "-arm"
  end

  version "2.13.1"
  sha256 arm:          "9ad099756f6ece21e3a2a3f99529ce19679119b27730a23d022235871f6eda8c",
         intel:        "ee37fb1340319124a4639d2e63f868c1e95b40608fa38b5181be114fbf5e28c1",
         arm64_linux:  "59af79f1ef83b2eb447997e5598e7bba1426c0bcce781cf4ac960f736f277803",
         x86_64_linux: "2d2a833f60c073b027a83d58f78f79dd6f5ae772566d62680738a1d0fc90e962"

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
