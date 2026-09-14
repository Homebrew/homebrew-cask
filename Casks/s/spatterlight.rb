cask "spatterlight" do
  version "1.5.4"
  sha256 "8b35128d471df4255df23300f025d5ab3c29d0430dd247b3d53af74846cb52a0"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v#{version}/Spatterlight.zip"
  name "Spatterlight"
  desc "Play most kinds of interactive fiction game files"
  homepage "https://ccxvii.net/spatterlight/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Spatterlight.app"

  zap trash: [
    "~/Library/Application Scripts/net.ccxvii.spatterlight.*",
    "~/Library/Containers/net.ccxvii.spatterlight.*",
    "~/Library/Preferences/net.ccxvii.spatterlight.plist",
  ]
end
