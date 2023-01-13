cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.3"
  sha256 arm:   "426cf06082926b060796051e12367d7cb304ee007f6861d8c35e758ff5f362ad",
         intel: "719ba4b7c848131a624786f74795fca369197370db3455efaaa30136ed13e85f"

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
