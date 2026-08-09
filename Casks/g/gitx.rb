cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.1"
  sha256 arm:   "238084985e3e7dbae33e13dac312f33ef61d9ce2f71a069b6b1eae91fb757edf",
         intel: "62e4a1170ca640721c9289a8d4dbff394a1358ca053edaca427f9861490bcf45"

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
