cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.11.0"
  sha256 arm:          "c9978d14e38bc4a3fb458c0a78a7adb0e33bca54fff5389726f0fa2dee9e0b8d",
         intel:        "c9978d14e38bc4a3fb458c0a78a7adb0e33bca54fff5389726f0fa2dee9e0b8d",
         arm64_linux:  "0335e128c32d1f2216449241b02fc2c016ab55ec691fccec91a9dd956b5f7008",
         x86_64_linux: "b871e43bab7295f8f56e0c85ff2bc6bdd4a4951f530745ca6536f8aac03eb7f3"

  on_macos do
    depends_on macos: :monterey

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
