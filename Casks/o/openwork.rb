cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.10"
  sha256 arm:          "fd8cbd89f58bac5bb6451a7d512399f843b7da5ee0f5f5c09f095a88779c1b83",
         intel:        "50381a5dd726505d38fcf20cc253d699274904775a8859cab4d9b57088380771",
         arm64_linux:  "c31ae9702a1307484d8ec7d9d9d3d3dd97b661ab384b9d5ed2866d472920a4df",
         x86_64_linux: "778e3ec19f4b61fc54c5cf9960313463541fd6a8c78e5f4e58c143c5de3a6fad"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

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
