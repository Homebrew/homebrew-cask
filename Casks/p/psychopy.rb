cask "psychopy" do
  version "2024.2.0"
  sha256 "303c9945d2c8605bade16c4a72b9e072ec024c25857b2df5da0ed5777832bcc1"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.major_minor_patch}/StandalonePsychoPy-#{version}-macOS-py3.10.dmg"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://github.com/psychopy/psychopy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PsychoPy.app"

  zap trash: [
    "~/.psychopy3",
    "~/Library/Preferences/org.opensciencetools.psychopy.plist",
    "~/Library/Saved Application State/org.opensciencetools.psychopy.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
