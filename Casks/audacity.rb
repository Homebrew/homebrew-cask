cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.2"
  sha256 arm:   "7b4be3d7f91429abb6931dd610520a7d14fcc186d6230fc5546cb2e5bb6d0edf",
         intel: "968256f34b740e329eebee9f007400d08544da5d19a90a82f0e384d126ce55df"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
