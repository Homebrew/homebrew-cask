cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.5"
  sha256 arm:   "6ccb18aa3149c590f7eec40fb804e8c42ec1d500ef5ae6123f10b85b0de2cdc5",
         intel: "5d785243d816136fee89cf0ac785c1ddebb7c3060acdb9976316c0cbe90a5219"

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
