cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "0.23-46-g564065fc"
  sha256 arm:   "863ca9567be8a35465d336e5517938860b613dcaaf11560489fd8d2b62acde5d",
         intel: "7b8be152626c60b817eddfd7fbd16de91cae7c0610f05e854cf3432490724292"

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg"
  name "GitX"
  desc "Git GUI"
  homepage "https://github.com/gitx/gitx"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "rowanj-gitx"

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*",
    "~/Library/Caches/nl.frim.GitX",
    "~/Library/Preferences/nl.frim.GitX.plist",
    "~/Library/Saved Application State/nl.frim.GitX.savedState",
  ]
end
