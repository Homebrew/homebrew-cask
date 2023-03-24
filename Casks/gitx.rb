cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "0.23"
  sha256 arm:   "6b350adf5d38826d834a25e0cdacb3f3bc38670cbd928a59bd7982b1d528ea0f",
         intel: "ba5edc82c260fbdf4b6e74c2e3a455b270ebde6d5c94a9140f212bec1cab9507"

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
