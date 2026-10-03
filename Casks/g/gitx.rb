cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7"
  sha256 arm:   "aae135d59e9d760bb4b438bb3635aae1d0537b4e6590fa1d0bad539589318cb0",
         intel: "05e025aa24ec5a730fba0c18e9859ca26ad31aed8593de32726f4f89d07bd206"

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
