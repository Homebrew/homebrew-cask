cask "psychopy" do
  version "2022.1.0"
  sha256 "49e8874dafe8110977da6814637a89950ea9e9b8e59a6a07bf1f6fa36b9fa52b"

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
