cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8"
  sha256 arm:   "778d0e031f9b971831d58b10e3c4896fc2798ac5d530851a9066ba27713b46a6",
         intel: "8f1a37eecbe005c6c41d8eb9127b62a5d303ff7ac050abb6d7b8dccaa3d3eade"

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg"
  name "GitX"
  desc "Git GUI"
  homepage "https://github.com/gitx/gitx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*",
    "~/Library/Caches/nl.frim.GitX",
    "~/Library/Preferences/nl.frim.GitX.plist",
    "~/Library/Saved Application State/nl.frim.GitX.savedState",
  ]
end
