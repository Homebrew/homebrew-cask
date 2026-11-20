cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.13.0"
  sha256 arm:          "fada4e713a1bd686a82ea2a5105c486e48f45b0e21b9ec4df2784f78959d4cd1",
         intel:        "fada4e713a1bd686a82ea2a5105c486e48f45b0e21b9ec4df2784f78959d4cd1",
         arm64_linux:  "68aa6b12ddf9f2aa6e2f19781db329ba298bf7a2653fd8fef04521bd27679ab1",
         x86_64_linux: "37cf84928ba58be868f55cb381bb95b7e650aeba6b33a10d37cc39751ee658bd"

  on_macos do
    depends_on macos: :ventura

    app "KiroCrew.app"
  end
  on_linux do
    app_image "KiroCrew-#{arch}.AppImage", target: "KiroCrew.AppImage"
  end

  url "https://download.crew.kiro.dev/desktop/stable/#{version}/KiroCrew#{url_end}"
  name "Kiro Crew"
  desc "Persistent AI development workspace with multi-agent support"
  homepage "https://kiro.dev/docs/crew/"

  livecheck do
    url "https://updates.crew.kiro.dev/feed/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  zap trash: [
    "~/.cache/kirocrew-desktop-updater",
    "~/.config/kirocrew-desktop",
    "~/.kirocrew.breadcrumb",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amazon.kiro.crew.sfl*",
    "~/Library/Application Support/kirocrew-desktop",
    "~/Library/Application Support/kirocrew-electron-mac",
    "~/Library/Logs/kirocrew-desktop",
    "~/Library/Preferences/com.amazon.kiro.crew.plist",
  ]
end
