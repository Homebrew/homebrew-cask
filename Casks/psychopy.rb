cask "psychopy" do
  version "2023.1.0"
  sha256 "d41000e843b3eb44c9db5f95612f849f032250928f0773dbf846b34f8f7e09d4"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.major_minor_patch}/StandalonePsychoPy-#{version}-macOS.dmg"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://github.com/psychopy/psychopy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PsychoPy.app"
end
