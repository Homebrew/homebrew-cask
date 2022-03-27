cask "psychopy" do
  version "2022.1.2"
  sha256 "69532da9187f4279f0035efec1b33f99947683f7bacd1a0a2ffc31d04fb4ec33"

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
