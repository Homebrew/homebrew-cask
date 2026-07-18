cask "ghostpepper" do
  version "2.4.1"
  sha256 "a2ca72d17dcec742b02745ed63f1fc2e1dd84d16ce6591e7be3a63a705e5373f"

  url "https://github.com/matthartman/ghost-pepper/releases/download/v#{version}/GhostPepper.dmg"
  name "GhostPepper"
  desc "Speech-to-text and meeting transcription tool"
  homepage "https://github.com/matthartman/ghost-pepper"

  livecheck do
    url "https://raw.githubusercontent.com/matthartman/ghost-pepper/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "GhostPepper.app"

  zap trash: [
    "~/Library/Application Support/GhostPepper",
    "~/Library/HTTPStorages/com.github.matthartman.ghostpepper",
    "~/Library/Preferences/com.github.matthartman.ghostpepper.plist",
  ]
end
