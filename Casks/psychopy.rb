cask "psychopy" do
  version "2022.1.1"
  sha256 "68376bc4a9b8bf8913c078f534f7e253736cffe105ab7d498e30e769a4e7cdd6"

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
