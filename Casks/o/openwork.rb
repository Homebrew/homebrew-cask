cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.31"
  sha256 arm:          "2128c71dd59a6eb35d3d63b93d3771553f4cb3c8de86617196eab674999632a1",
         intel:        "bcad2febbd03057a7c8cca731c5387b9cd179adb2caf5173a4546df0bce2d6e7",
         arm64_linux:  "d9b1164038266088c6bc34df342cde661580048655f58cf83abb241905ab8bc8",
         x86_64_linux: "21111d18014661a9498b071a2759adbcf05b3b3a43acfe76a7eea737a9d132e9"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    zap trash: [
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end
