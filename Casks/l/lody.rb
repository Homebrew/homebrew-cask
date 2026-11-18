cask "lody" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.113.1"
  sha256 arm:          "e8ce622ec38916f7d4e1698d2ebf45f5e3a98b5aceec4ba64f795cef0f0d29fc",
         intel:        "a52d01b1a940e571c2c8023fcf2c2085af0ae1dfd22747c6a67f9e43cfea8f02",
         x86_64_linux: "18bd3466e4650c7a65ac90bc084c40c438152e8514360e109953882ba90ae5d2"

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
