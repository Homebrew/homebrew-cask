cask "psychopy" do
  version "2022.2.2"
  sha256 "12922048a6e0d406aead7d2f0e769da0fe840f286b04ce06c7e9bfed08cd0c84"

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
