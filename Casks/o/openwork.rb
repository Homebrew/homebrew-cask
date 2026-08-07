cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.18"
  sha256 arm:          "98db199035a61d4648d89fe2b828af5bbeccc1df03b26194b960172676e78ab8",
         intel:        "b3a722315d95fa10794894ed4c8163a0e2a329518f07324caf35c45fe96a1643",
         arm64_linux:  "3127a583432fb24bc225a87add9038d324a22a45e8daa12b0f553088716b2bd0",
         x86_64_linux: "aa07e59fc43f26625d2e8ec91c0d979675da51cf1e6b7b42aa5a58e0a249f7ef"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.differentai.openwork.sfl*",
      "~/Library/Application Support/com.differentai.openwork",
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
      "~/Library/Preferences/com.differentai.openwork.ShipIt.plist",
    ]
  end
  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}.#{url_end}"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
