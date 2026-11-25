cask "lody" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.116.1"
  sha256 arm:          "7b66cd5097c3e73b19c7608656bd29a928b171f5b2f1fe207a19580cba274123",
         intel:        "9a5a0c14a565d3b78c3ffa10af8d9d959f9fa65a762123a1ad6d6728d925a7ca",
         x86_64_linux: "789fdce97fa9c37dddef96641bece4606d25ee05a4ec00ec791de94e1493007b"

  on_macos do
    depends_on macos: :ventura

    app "Lody.app"

    zap trash: [
      "~/.lody",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.lody.desktop.sfl*",
      "~/Library/Application Support/Lody",
      "~/Library/Caches/ai.lody.desktop",
      "~/Library/HTTPStorages/ai.lody.desktop",
      "~/Library/Preferences/ai.lody.desktop.plist",
      "~/Library/Preferences/lody-desktop-nodejs",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Lody-#{version}-#{arch}.AppImage", target: "Lody.AppImage"

    zap trash: [
      "~/.cache/@lodyelectron-updater",
      "~/.config/Lody",
      "~/.config/lody-desktop-nodejs",
      "~/.local/share/icons/ai.lody.desktop.png",
      "~/.lody",
    ]
  end

  url "https://updates.lody.ai/production/Lody-#{version}-#{arch}.#{url_end}"
  name "Lody"
  desc "Share coding agent sessions across desktop and mobile"
  homepage "https://lody.ai/"

  livecheck do
    url "https://updates.lody.ai/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
end
