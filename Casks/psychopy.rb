cask "psychopy" do
  version "2021.2.3"
  sha256 "1af534c3478600e551d63594a493a0ca17a3188a9c662d0caf1881d0f767334a"

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
