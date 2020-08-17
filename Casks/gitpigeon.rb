cask "gitpigeon" do
  version "1.0"
  sha256 "a0fe721896d74155570cd360b38c0da92cc38a71713d3d3f6095eba0a007ed7a"

  url "https://updates.gitpigeon.com/GitPigeon.#{version.major}.dmg"
  appcast "https://updates.gitpigeon.com/appcast.xml"
  name "GitPigeon"
  homepage "https://www.gitpigeon.com/"

  depends_on macos: ">= :mojave"

  app "GitPigeon.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Application Support/com.zbudniewek.GitPigeon",
    "~/Library/Caches/com.zbudniewek.GitPigeon",
    "~/Library/Preferences/com.zbudniewek.GitPigeon.plist",
  ]
end
