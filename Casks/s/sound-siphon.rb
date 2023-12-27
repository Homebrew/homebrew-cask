cask "sound-siphon" do
  version "3.6.4"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://staticz.com/download/5876/"
  name "SoundSiphon"
  desc "App audio capture"
  homepage "https://staticz.com/soundsiphon/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "Sound Siphon.app"

  uninstall script: {
    executable: "#{appdir}/Sound Siphon.app/Contents/Resources/uninstall_soundsiphon",
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Support/Sound Siphon",
    "~/Library/Caches/com.staticz.SoundSiphon3",
    "~/Library/HTTPStorages/com.staticz.SoundSiphon3",
    "~/Library/HTTPStorages/com.staticz.SoundSiphon3.binarycookies",
    "~/Library/Preferences/com.staticz.soundsiphon.playeragent.plist",
    "~/Library/Preferences/com.staticz.SoundSiphon3.plist",
    "~/Library/Saved Application State/com.staticz.SoundSiphon3.savedState",
    "~/Music/Sound Siphon",
  ]
end
