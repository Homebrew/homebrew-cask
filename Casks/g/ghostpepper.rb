cask "ghostpepper" do
  version "2.4.4"
  sha256 "a8c09b24ce19613bb421c0dce06e6167d738a8295f05fa5e5a363551de6b8f06"

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
