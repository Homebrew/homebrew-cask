cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.2"
  sha256 arm:   "a1a29795fff99234d8ceab1c77481406537d2e76220a0315dc54fa0c294860e8",
         intel: "57c6ba0c69161a77b4e2895f1a61722a5029aff28c39eb04ea940d46968a1285"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
