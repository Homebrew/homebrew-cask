cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.8"
  sha256 arm:   "93976dd9e459004296928deebeb06028c3ab11e7a0d7a08b3201b5c2aaada74a",
         intel: "c2f32f304c3f5a20022d19e53e9a9db573608b87e125b3206d8c493d1518746e"

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
