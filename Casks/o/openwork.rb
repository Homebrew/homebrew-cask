cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.66"
  sha256 arm:          "3c0875a9fd86d2eadaaa24170aa58372fbf9d1c8ef62e87e8088c4dec0f164b4",
         intel:        "82fc056d58666bbcf0d26e389fb158868d24c73ac8fdcf04c98afbdd8a1d974e",
         arm64_linux:  "ab4dfd756ef8cfa71710f2e5970ae9d3dab7f151a53c89159a5f7d5e72e8c8c2",
         x86_64_linux: "316272c8496689deea663cd76203d0ac618aaab5371803d401ae6968d540b642"

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
