cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.6"
  sha256 arm:   "f621d9544bb9cc3448923a694c1d370f096322834039b48f56ff3caa763c5f67",
         intel: "bb0b7a441aacd13bb0feed3ad1041986f65bdb6cfb3601b86150e4edb991c347"

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
