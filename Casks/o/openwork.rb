cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.34"
  sha256 arm:          "9edd907f75ef20193271eff658029d8c6363648ae32ef72b1119b1896260a4a0",
         intel:        "b5e694e43d9ac6b99e728c321d719956630f6d41ca45d615fa9b8600a8d85ace",
         arm64_linux:  "df8ed19e19c3ef3de55de60b388426db990e45f994e19480ffde587605d8a3ff",
         x86_64_linux: "fefefb30f24147e2655fb0028710d08e7944365b68f93a3850d2eef89946fb36"

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
