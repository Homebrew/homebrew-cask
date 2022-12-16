cask "psychopy" do
  version "2022.2.4"
  sha256 "cd85f0a552a58d9a304232e6a89c1a15946fbe6c30e0577d482b6266a68267ee"

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
