cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.7.0"
  sha256 arm:          "df474085ddf9640282e4105ef62dee29e97e48d325c8453fb46e5bc3056c1786",
         intel:        "df474085ddf9640282e4105ef62dee29e97e48d325c8453fb46e5bc3056c1786",
         arm64_linux:  "a3a39c57cf4779e7118ed7929dee584add5c245e0fb3dc98ba8fbfa26a188c1e",
         x86_64_linux: "71173fe642d49679ce5e12d297a66c4938dd6a273c6d710a25947e9ad43e77ab"

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
    "~/Library/Application Support/kirocrew-electron-mac",
    "~/Library/Preferences/com.amazon.kiro.crew.plist",
  ]
end
