cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.5"
  sha256 arm:   "faa9cb53bd2515447b5e4f71d1220e258f484489cd8db4939b8ffbc255c9c0b3",
         intel: "e910e80f2e395f77a81d94ea8b2592ac018605dc15d480cc4ddb7c1adb3dea70"

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
