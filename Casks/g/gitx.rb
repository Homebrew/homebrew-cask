cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.3"
  sha256 arm:   "7bf8d0fb196032f05b757bb48de73ea94034fe02dca3d77c02202686cb3a3602",
         intel: "2ed52175db6b69eca9593a9b6536b9ace81c0209279742cc7a25a0d2f2795537"

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
