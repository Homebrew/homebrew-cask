cask "music-bar" do
  version "1.5"
  sha256 "9d9d130a29a83040b112da7dd798409d41aa3fa425469f9c76ea637bc914fd9d"

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
