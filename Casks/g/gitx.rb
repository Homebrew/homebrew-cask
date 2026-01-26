cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1"
  sha256 arm:   "60e214e848026e605f64cf1b60319541c9174d65bacdf8bee8e5fc6ef2b858c1",
         intel: "df18702bb1d3ccfbedbf9ae0ff89ec016308ed4018e3ec1828e1d38475220f2c"

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
