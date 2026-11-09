cask "codeburn-app" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.9.28"
  sha256 arm:          "37ce4922d7d04531a486bc743307329c21325b2f573fea7caf20eabd072efc5a",
         intel:        "c04cb1370c27cbe4df8dca9259c1ada6f32c5193f9f92a7683203f7444b78317",
         x86_64_linux: "0d1e9fc8ab3ca4382e73d8ba21a477e8ac029f83f90a29037b3a3ffe1c7104fe"

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
