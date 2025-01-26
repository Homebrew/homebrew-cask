cask "raze" do
  version "1.10.2"
  sha256 "c1892c20add48bbaabdae2af8bfb034f4e45cad118b791c65053fd738e9e6563"

  url "https://github.com/coelckers/Raze/releases/download/#{version}/raze-macos-#{version}.zip",
      verified: "github.com/coelckers/Raze/"
  name "Raze"
  desc "Build engine port backed by GZDoom tech"
  homepage "https://raze.zdoom.org/about"

  livecheck do
    url "https://raze.zdoom.org/downloads"
    regex(/href=.*?raze[._-]macos[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :catalina"

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
