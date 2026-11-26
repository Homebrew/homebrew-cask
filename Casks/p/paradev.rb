cask "paradev" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.12"
  sha256 arm:          "fa223394efd8bd7f6e6520c86cb18af888edab0f9df9a49d275498362dd787e7",
         intel:        "37142496a770b8e04a4a9eb6fc58a09dac813534666a147b91d37afaa0fffbb7",
         x86_64_linux: "90eb8a1230c6e522cd7f2019815e4681a8c3f05e05a478a4709fd246004a6e4b"

  on_macos do
    depends_on macos: :ventura

    app "Paradev.app"

    uninstall quit: "com.superset.desktop"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superset.desktop.sfl*",
          "~/Library/Application Support/Paradev",
          "~/Library/Application Support/Superset",
          "~/Library/Caches/com.superset.desktop",
          "~/Library/HTTPStorages/com.superset.desktop",
          "~/Library/Logs/Paradev",
          "~/Library/Logs/Superset",
          "~/Library/Preferences/com.superset.desktop.plist",
          "~/Library/Saved Application State/com.superset.desktop.savedState",
        ],
        rmdir: [
          "~/.paradev",
          "~/.superset",
        ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Paradev-x86_64.AppImage", target: "Paradev.AppImage"

    zap trash: [
          "~/.cache/@supersetdesktop-updater",
          "~/.config/Paradev",
          "~/.config/Superset",
        ],
        rmdir: [
          "~/.paradev",
          "~/.superset",
        ]
  end

  url "https://github.com/ParadevAI/Paradev/releases/download/desktop-v#{version}/Paradev-#{arch}.#{os}"
  name "Paradev"
  name "Superset"
  desc "Workspace for running coding agents in parallel"
  homepage "https://paradev.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
