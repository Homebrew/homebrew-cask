cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.0"
  sha256 arm:   "bd82ad692b712ba03fe310b1e22085338411090042f24a3423b3d46cde8b332c",
         intel: "963c95684504429488d217e6af9b8e7907d1e5f861585d63a110bb0704324e04"

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
