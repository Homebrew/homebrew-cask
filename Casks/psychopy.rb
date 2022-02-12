cask "psychopy" do
  version "2022.1.0"
  sha256 "49e8874dafe8110977da6814637a89950ea9e9b8e59a6a07bf1f6fa36b9fa52b"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.major_minor_patch}/StandalonePsychoPy-#{version}-macOS.dmg"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://github.com/psychopy/psychopy"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.+/StandalonePsychoPy[._-]v?(\d+(?:\.\d+)+)[._-]macOS\.dmg}i)
  end

  app "PsychoPy.app"
end
