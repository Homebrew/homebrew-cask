cask "psychopy" do
  version "2024.1.3"
  sha256 "3e801766ca90e1ec352ea1642be9bbad14cba3cd7d151fe35e4af57f096840e4"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.major_minor_patch}/StandalonePsychoPy-#{version}-macOS.dmg"
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
end
