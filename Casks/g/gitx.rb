cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4"
  sha256 arm:   "f9f06f4f8cea7f548dfec863cd08c12ba9856ff48ecb579f18b3ee6c843aafcf",
         intel: "b6fcd7307b8ee3a1f5d82720db9f67a3dacf1cca2a8d2b8bd611484fc8f051f0"

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg"
  name "GitX"
  desc "Git GUI"
  homepage "https://github.com/gitx/gitx"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*",
    "~/Library/Caches/nl.frim.GitX",
    "~/Library/Preferences/nl.frim.GitX.plist",
    "~/Library/Saved Application State/nl.frim.GitX.savedState",
  ]
end
