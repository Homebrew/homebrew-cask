cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.7.2"
  sha256 arm:          "32b7361561c94c9776d34e1ff64d55e4da017e31815de9a9f096b304b0833e05",
         intel:        "32b7361561c94c9776d34e1ff64d55e4da017e31815de9a9f096b304b0833e05",
         arm64_linux:  "318eb554c64dc981228db80da0f5631c3df11ef5b39e704ac848d22e25f12f81",
         x86_64_linux: "38380fa8160404c2c8bcd093977b1a414e6b2678724ed2fb3bb7164443df6b02"

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
