cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.6.0"
  sha256 arm:          "bd71e30d61a7ae809a5995c6681905bd361fb5ae642a8c8012a8d0971bccdfb3",
         intel:        "bd71e30d61a7ae809a5995c6681905bd361fb5ae642a8c8012a8d0971bccdfb3",
         arm64_linux:  "8c12f92edf2455345ca8a2f0c33d950d7d807420f0259e1655f2203de43e6590",
         x86_64_linux: "7adee34e659f64f6ba5773e7acb049be9cc44a9d2fe0e11ac90cd9ff5ac76aee"

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
