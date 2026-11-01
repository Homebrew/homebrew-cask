cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.11.1"
  sha256 arm:          "31f4e9b8844bf0c2c9ba2d0bdbab0343776d1f2d76d49256c89d79eb68402b5c",
         intel:        "31f4e9b8844bf0c2c9ba2d0bdbab0343776d1f2d76d49256c89d79eb68402b5c",
         arm64_linux:  "91bc558eb701d4c9bed2442cee7a564d0b3de488c0a8115c07feb3d81e519138",
         x86_64_linux: "c519225e8a37d75f904cc127060a437cb0bec59b5d2e35e5551e4ada5f9d146f"

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
