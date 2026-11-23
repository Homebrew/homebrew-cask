cask "lody" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.114.1"
  sha256 arm:          "b5ab4f167ec0f3f6aa145983f40f33068be00da5d40876d62813458a70424b0c",
         intel:        "71bfd243afd40cb5e971e77368d83b070ed14d4f9d507b35c9777f0de0a5eb40",
         x86_64_linux: "13c50fab2cd1f2811b3546eed4c6bbf0b8c9cb722f8f880e547cd2b47f63bc6f"

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
