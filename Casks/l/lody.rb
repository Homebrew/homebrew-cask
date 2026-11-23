cask "lody" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.115.1"
  sha256 arm:          "8605e4ec2af6cf1946475d395fa1c51487cbf8a8566a0ea5a059ded648e9c7ac",
         intel:        "35a012222d2d5c45b44d41408579f853c077ea68059fb12c02eaa31cd962816d",
         x86_64_linux: "800ad5fed260cd8175f894736fa65c02d1dc5b2e4a916c3c299bdb37e8c37dcf"

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
