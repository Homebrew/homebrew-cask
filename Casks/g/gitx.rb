cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2"
  sha256 arm:   "2bf5cfa330e82ac9961879e1ad6571658ce589e96163eb92c89c86ebac915b96",
         intel: "7ce9809308317f2700b7b8c1aae313a27124c4cf82e238d75aa816bf580fb38b"

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg"
  name "GitX"
  desc "Git GUI"
  homepage "https://github.com/gitx/gitx"

  livecheck do
    url "https://gitx.github.io/gitx/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "GitX.app"
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*",
    "~/Library/Caches/nl.frim.GitX",
    "~/Library/Preferences/nl.frim.GitX.plist",
    "~/Library/Saved Application State/nl.frim.GitX.savedState",
  ]
end
