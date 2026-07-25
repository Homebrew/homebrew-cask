cask "gitx" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5"
  sha256 arm:   "a4189d9d6f7ea8dd174ef764fd55cbe0b7c4159b1df8fbb4a9023b4a8e7e8081",
         intel: "45c2431f16d5df73021774b83515fef23b95788784590feafa7e941b2e8fab3b"

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
