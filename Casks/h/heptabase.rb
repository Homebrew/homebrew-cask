cask "heptabase" do
  arch arm: "-arm64"
  os macos: "#{arch}-mac.zip", linux: ".AppImage"

  version "1.112.1"
  sha256 arm:          "fd31c4e7de0825772b40ccbd21f8127ff9699ea3e62ff01482fb63b7ef35ce2e",
         intel:        "2a66519337509b329dc3343b90552e9abd295951871d332cf4e45735fc4752a7",
         x86_64_linux: "917226457bc71cab467b7b64f4117c16d14251cc94ff8328082c12c17ae190ea"

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
