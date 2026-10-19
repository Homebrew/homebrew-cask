cask "lody" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.107.1"
  sha256 arm:          "4ee57bc073863e9d5e22eee87e6de7f1ab1e4fa6eff69fe536a3c8dacc4968a6",
         intel:        "6a80f404607eb183279dc0f76c0be4a6b1909a22e79904bec4c1e424bc13ced1",
         x86_64_linux: "63756c5c3f2b11fbf2da5082759f7cb0c4a5c5e140252115cb923f70e15be601"

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
