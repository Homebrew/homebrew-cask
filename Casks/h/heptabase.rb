cask "heptabase" do
  arch arm: "-arm64"
  os macos: "#{arch}-mac.zip", linux: ".AppImage"

  version "1.111.0"
  sha256 arm:          "33aa43cb4b296ccbeb948f385bb839a8359ce11e16543be823d09bdfb5237d84",
         intel:        "861dd24d39652d51953b1d4e49bc98685766a025c1f869d83b9dbb32ed504ec4",
         x86_64_linux: "0d4d75082ebdbe6896d963acf65fac571adc805aeffd1c440d686cb3535fc0ae"

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
