cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6"
  sha256 arm:   "6645fa2b59564475b04dc41f867c12777665496a83cc941d8dd86a2f9b090de7",
         intel: "80df1015e45da67402c7030d914da3b31d7ff9c9b5deffc1c9665532e6794ce1"

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
