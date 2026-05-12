cask "ghostpepper" do
  version "2.3.0"
  sha256 "d7c508f70b00cc518dfd40e875fbcfd8666d1dbb6086fb3e3c2159aafa223979"

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
