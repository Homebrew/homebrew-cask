cask "lody" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.104.0"
  sha256 arm:          "111ce9c2f282d93d0c07e56cb8ee7b24171e2879f54ef7fa1129e27d4b82c215",
         intel:        "bc9f9ad32b0e9919c218a3dda413f2951e394b4e4dd3a124b29f68d0bea995d3",
         x86_64_linux: "c7ce27e3619c035723de2a4aa43e10cc926f57d96bfa293979538da4e013761a"

  on_macos do
    depends_on macos: :monterey

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
