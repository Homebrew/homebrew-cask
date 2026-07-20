cask "ghostpepper" do
  version "2.4.2"
  sha256 "fbd30db478d3477db4808b489e84be90f2a678b882d3609147bbb0bc83d84aac"

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
