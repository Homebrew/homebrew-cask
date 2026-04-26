# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "ghostpepper" do
  version "2.3.0"
  sha256 "d7c508f70b00cc518dfd40e875fbcfd8666d1dbb6086fb3e3c2159aafa223979"

  url "https://github.com/matthartman/ghost-pepper/releases/download/v#{version}/GhostPepper.dmg"
  name "GhostPepper"
  desc "100% private on-device voice models for speech-to-text and meeting transcription"
  homepage "https://github.com/matthartman/ghost-pepper"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://raw.githubusercontent.com/matthartman/ghost-pepper/main/appcast.xml"
    regex(/>Version (\d+.\d+.\d+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "GhostPepper.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/GhostPepper",
    "~/Library/HTTPStorages/com.github.matthartman.ghostpepper",
    "~/Library/Preferences/com.github.matthartman.ghostpepper.plist",
  ]
end
