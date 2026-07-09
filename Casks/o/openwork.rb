cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.16"
  sha256 arm:          "4f929258cb6cdadc47ba7e7fd99b2c361fd5ca02a9b2abc64e7b0693d13277c6",
         intel:        "d8f5706e2cff20c5117551c763134ff150b9ad13582c2b3264f0ffee5ee8f88d",
         arm64_linux:  "5aaf2c5c2e491ff65a5014c5e48a227f097257e58955a02d01a6d094bf59ed0b",
         x86_64_linux: "dff271378f5e2716eb4d63675e8ce5e9040effe93049526bd38b2b267195874e"

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
