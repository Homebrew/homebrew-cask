cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.3"
  sha256 arm:   "783262df08e76fd247590a47b42e921d8b1a0ad38bb050854654e10f6030760e",
         intel: "eab0687b4f218a80ee4b661f45a09e7674b387033b6aa04efdd31a1f0d9f77c6"

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
