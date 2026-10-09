cask "heptabase" do
  arch arm: "-arm64"
  os macos: "#{arch}-mac.zip", linux: ".AppImage"

  version "1.112.3"
  sha256 arm:          "8f3e5b7973ad364c2d4f647b9d089e349f2264b0cfadd9fadb455a0efd07ecdb",
         intel:        "999bc3b2097bfc84e7eda2992b93e478f4281c85a77b84007bba33cc4c3c6608",
         x86_64_linux: "3487c7b16ce8f6129215763a5b6ff60f099d2cd6361cb4f74933e6aa0c2a98b2"

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
