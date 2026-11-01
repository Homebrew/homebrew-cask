cask "codeburn-app" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.9.27"
  sha256 arm:          "81f77bb6aa76bc618ff4a3f1798ce60b9b16f6d7b50629b6d1cab4d977cb17fb",
         intel:        "260602b820b56f8cf7c3a9e6f18a9b29c63a70efaaa4b055a64e0835c63aa30d",
         x86_64_linux: "8a843e32ebb6b09c1910d5a74da6a03aaa1e16a43fe13fadb461f245efee9192"

  on_macos do
    depends_on macos: :monterey

    app "CodeBurn.app"

    uninstall quit: "org.agentseal.codeburn-desktop"

    zap trash: [
      "~/.cache/codeburn",
      "~/Library/Application Support/codeburn-desktop",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.agentseal.codeburn-desktop.sfl*",
      "~/Library/Caches/codeburn-desktop-updater",
      "~/Library/Preferences/org.agentseal.codeburn-desktop.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "CodeBurn-#{version}.AppImage", target: "CodeBurn.AppImage"

    zap trash: [
      "~/.cache/codeburn",
      "~/.cache/codeburn-desktop-updater",
      "~/.config/codeburn-desktop",
    ]
  end

  url "https://github.com/getagentseal/codeburn/releases/download/desktop-v#{version}/CodeBurn-#{version}#{arch}.#{os}"
  name "CodeBurn"
  name "CodeBurn Desktop"
  desc "Track AI coding token usage and cost"
  homepage "https://codeburn.app/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
end
