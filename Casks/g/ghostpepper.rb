cask "ghostpepper" do
  version "2.4.0"
  sha256 "2be0ea17477e62b22c0a99d307b30811e3dd24e9b6ee26ec28bc5056284f917a"

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
