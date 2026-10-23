cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.40.0"
  sha256 arm:          "0005bac6f772a6dea4a40e357fba2ea76f3d95a325faf02561a64533a33e33c2",
         intel:        "2eea58bc2acd503ce370ac66951051fc10803e2fa034f54ccf8e390df7655ea9",
         x86_64_linux: "51900e424707ba28cdbdc470f1b95efe7ac835d94afe01882ab03d6142b1f86b"

  on_macos do
    depends_on macos: :monterey

    app "Superset.app"

    uninstall quit: "com.superset.desktop"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superset.desktop.sfl*",
          "~/Library/Application Support/Superset",
          "~/Library/Caches/com.superset.desktop",
          "~/Library/HTTPStorages/com.superset.desktop",
          "~/Library/Logs/Superset",
          "~/Library/Preferences/com.superset.desktop.plist",
          "~/Library/Saved Application State/com.superset.desktop.savedState",
        ],
        rmdir: "~/.superset"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "superset-#{version}-x86_64.AppImage", target: "Superset.AppImage"
  end

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/#{os}-#{version}#{arch}#{url_end}"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
