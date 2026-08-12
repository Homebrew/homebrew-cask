cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.20"
  sha256 arm:          "68f36e751e77dfa365db8ad52426c0a7b328934fe82eb24ab0663e7b9ed8b0c7",
         intel:        "be003e07613e8668fa2e330795c9cc7f08fb89d4193bee5c61f8768a24b52ed1",
         arm64_linux:  "2b6ea2dc4daf16aa9e94cb60348dacfd504aa5f30dd79471cd0871257acad6f8",
         x86_64_linux: "b05fedc9a432efe172505617a44965a3160548ea7401ecde30f9f3b4a2a0b4a8"

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
