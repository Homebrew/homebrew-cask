cask "raze" do
  version "1.4.1"
  sha256 "28293d931028aa79d1a796dde238a0eeb8d40000407d926d3ddecac268a3dca5"

  url "https://github.com/coelckers/Raze/releases/download/#{version}/raze-macos-#{version}.zip"
  name "Raze"
  desc "Build engine port backed by GZDoom tech"
  homepage "https://github.com/coelckers/Raze"

  livecheck do
    url "https://github.com/coelckers/Raze/releases"
    strategy :page_match
    regex(/raze[._-]macos[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Raze.app"

  zap trash: [
    "~/Documents/Raze",
    "~/Library/Application Support/Raze",
    "~/Library/Preferences/org.drdteam.raze.plist",
    "~/Library/Preferences/org.zdoom.raze.plist",
    "~/Library/Preferences/raze.ini",
    "~/Library/Saved Application State/org.drdteam.raze.savedState",
    "~/Library/Saved Application State/org.zdoom.raze.savedState",
  ]
end
