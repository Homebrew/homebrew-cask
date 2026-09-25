cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.7.1"
  sha256 arm:          "0ba1466ae954f4444458192371cb15947aa43f2671ff354e1c6ceed23af9443a",
         intel:        "0ba1466ae954f4444458192371cb15947aa43f2671ff354e1c6ceed23af9443a",
         arm64_linux:  "827c6f2628e9a709747610e53ed846c882699171e2ac129b865f0657059cccf8",
         x86_64_linux: "009fa345323e1f69bd69f0f811d3a9fedb0b47dd215da6e7b9ed3a3b522d9779"

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
