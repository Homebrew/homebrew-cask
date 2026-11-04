cask "kirocrew" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "0.11.2"
  sha256 arm:          "e1233e588cb50b8aaae1b8a1cf0a0d050dcc36bc1d16b642d25056c430fcdc70",
         intel:        "e1233e588cb50b8aaae1b8a1cf0a0d050dcc36bc1d16b642d25056c430fcdc70",
         arm64_linux:  "d212439aff14f68a49e16f0edd02d47ee653981fd10be92d28f26bd28f58f26b",
         x86_64_linux: "22c80cc2e654f9d055c2693fcbe2d6f5a6117a098878500d5b10b2d28584d5c6"

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
