cask "psychopy" do
  version "2021.2.2"
  sha256 "20f0b451a06f56ee9df246096b30a5598becf0bfbe27dc41567b0ebbfcbcb829"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.major_minor_patch}/StandalonePsychoPy-#{version}-macOS.dmg"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.+/StandalonePsychoPy-v?(\d+(?:\.\d+)*)-macOS\.dmg}i)
  end

  app "PsychoPy.app"
end
