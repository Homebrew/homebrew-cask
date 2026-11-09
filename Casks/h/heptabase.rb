cask "heptabase" do
  arch arm: "-arm64"
  os macos: "#{arch}-mac.zip", linux: ".AppImage"

  version "1.117.0"
  sha256 arm:          "860b2c33661cf474c27308f5b25af46d505520c6a0a27feea148353272ab862b",
         intel:        "39b8df901498a468d3eb3745299422d7fbeb1a8b5306eb9241bb8eac0bc98fff",
         x86_64_linux: "96315a94f35881966113841664bbdc5cdd2971e8ad2d13657589e2f3a4d40b8d"

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
