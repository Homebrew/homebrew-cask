cask "music-bar" do
  version "1.6"
  sha256 "70a76a9cce1a2f2515878eea9789faaa2172c5131b4ede854622fd2f2316edd3"

  url "https://github.com/musa11971/Music-Bar/releases/download/v#{version}/Music.Bar.zip",
      verified: "github.com/musa11971/Music-Bar/"
  name "Music Bar"
  desc "Control Apple Music right from your menu bar"
  homepage "https://musa11971.github.io/Music-Bar/index.html"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Music Bar.app"

  zap trash: "~/Library/Preferences/me.musa11971.Music-Bar.plist"
end
