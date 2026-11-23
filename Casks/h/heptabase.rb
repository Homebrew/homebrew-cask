cask "heptabase" do
  arch arm: "-arm64"
  os macos: "#{arch}-mac.zip", linux: ".AppImage"

  version "1.118.1"
  sha256 arm:          "b74f5c4d750075df18e8d6aec73a71af8b9cb13d0d2efa025fadd6ae537948a5",
         intel:        "dea6d7d2f9cf8f1a899c00c260aee465368d24ae2ac0c6eb907a4f11870c012c",
         x86_64_linux: "907d0171c984e4e3ab78948e9490d245187c7f6061c3181d023004dbd42d8f8d"

  on_macos do
    app "Heptabase.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.projectmeta.projectmeta.sfl*",
      "~/Library/Preferences/app.projectmeta.projectmeta.plist",
      "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Heptabase-#{version}.AppImage", target: "Heptabase.AppImage"

    zap trash: "~/.config/project-meta"
  end

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{os}"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
