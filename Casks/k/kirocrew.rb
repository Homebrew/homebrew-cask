cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.13.1"
  sha256 arm:          "d9d4c5de0b5f02d5454e377ee209dc3254efb4a7a1798e693073ac84ab875d98",
         intel:        "d9d4c5de0b5f02d5454e377ee209dc3254efb4a7a1798e693073ac84ab875d98",
         arm64_linux:  "9cace22225f4f5d42b385fe89f5255243c5010ee81ef00da7f4d00adbe81d7a4",
         x86_64_linux: "2f4ca560ef96f99db76fe610ad16457ac488774b129acabd5589effbab633baf"

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
