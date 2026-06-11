cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.8"
  sha256 arm:   "2888d2bef5321990d3a11507f9b5cf9461831725a50f391fffd558f7404ffcf8",
         intel: "6d79d5ec2c1bbb69421b3c2c8ff5f34b34be96997e4cdb6e0fde12948b9fc173"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
