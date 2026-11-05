cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.12.0"
  sha256 arm:          "593e1f5aa1312d495d76865fa5dd31202b4b77ebcd2e213cae36d9fb39654f97",
         intel:        "593e1f5aa1312d495d76865fa5dd31202b4b77ebcd2e213cae36d9fb39654f97",
         arm64_linux:  "faafa05f17e85c9caaa38388670b4a7c4be5462ee47251acb90941272670eeec",
         x86_64_linux: "b068438090062804cd0e14e9339c0ba46e419af63c72b8da8810299eb8a474a2"

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
