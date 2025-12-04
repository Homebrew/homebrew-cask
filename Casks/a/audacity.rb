cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.6"
  sha256 arm:   "9a9db7b3748446d6cbc9d41596819bbc82f4ef884a7f8b66c727f72e0581f9ac",
         intel: "5bbf022f94bf4ab30933acfb0113c4299b8050bfd0cc4117f6112615fdd6d717"

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
