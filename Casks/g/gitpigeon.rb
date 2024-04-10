cask "gitpigeon" do
  version "1.0"
  sha256 "a0fe721896d74155570cd360b38c0da92cc38a71713d3d3f6095eba0a007ed7a"

  url "https://updates.gitpigeon.com/GitPigeon.#{version.major}.dmg"
  name "GitPigeon"
  homepage "https://www.gitpigeon.com/"

  deprecate! date: "2024-04-10", because: :unmaintained

  depends_on macos: ">= :mojave"

  app "GitPigeon.app"

  zap trash: [
    "~/Library/Application Support/com.zbudniewek.GitPigeon",
    "~/Library/Application Support/zettlr",
    "~/Library/Caches/com.zbudniewek.GitPigeon",
    "~/Library/Preferences/com.zbudniewek.GitPigeon.plist",
  ]
end
