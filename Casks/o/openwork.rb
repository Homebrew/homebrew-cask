cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.64"
  sha256 arm:          "50293d3035fbb2a78a60d22e2003ed22b6f1ecd918d35d504a56f6676f362996",
         intel:        "93ea01a72d435a89eafc8f678f3c9de4a13102c8d86f145b8aa2f1f2848fb5fb",
         arm64_linux:  "52092a14e904cc78a1f0c1b55fd220fc92589ed73795e7430f504a00748b133c",
         x86_64_linux: "58b145f740ddceb7b0019cbab30da68259a496ddc00a83922e368b84c248718e"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/@openwork",
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

    zap trash: [
      "~/.config/@openwork",
      "~/.config/com.differentai.openwork",
      "~/.config/openwork",
    ]
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
