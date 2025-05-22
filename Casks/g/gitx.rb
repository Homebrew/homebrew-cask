cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0"
  sha256 arm:   "1c0af5af1beff411a7cafc2b2c93aed43ecdc9e1074b2a87d8c4179429c64313",
         intel: "e54f303909a7eadcf1a0718e77beb78bb43ca8d5cb7623c01680b6c718f3bab5"

  url "https://github.com/gitx/gitx/releases/download/#{version}/GitX-#{arch}.dmg"
  name "GitX"
  desc "Git GUI"
  homepage "https://github.com/gitx/gitx"

  livecheck do
    url "https://gitx.github.io/gitx/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
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
