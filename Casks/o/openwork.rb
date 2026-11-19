cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.69"
  sha256 arm:          "965ed30ce98449f819d54782efc4cf4f0f08d9b85d38907fd7e27868802f858e",
         intel:        "b4249606aa3eafdfd16284dd7cbb81fd9f5b5bb10da52f374226a1108012d5ca",
         arm64_linux:  "4cce5e495561ae787fd4b25192c41a0c16977854673e7a1722621b2ab9b45a1c",
         x86_64_linux: "c1a94f689f33a3afb8853f3a6089ce60b6c472648612611694a9410f6944b509"

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
