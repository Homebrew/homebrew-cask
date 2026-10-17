cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.9.0"
  sha256 arm:          "dadecc2bc65ffa550db2ea32270f80a71f693e7394386706d92fa04fd3b0feb0",
         intel:        "dadecc2bc65ffa550db2ea32270f80a71f693e7394386706d92fa04fd3b0feb0",
         arm64_linux:  "e3f844ddb4e0c8f1c78084764e80f33be2e3be46dfd51036cbbd00d900f45106",
         x86_64_linux: "78ed3cf76d26bbe64b06511e0b9f02623dcefee6a9df27bf2020a6f9b2a56a4d"

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
