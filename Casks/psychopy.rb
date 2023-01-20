cask "psychopy" do
  version "2022.2.5"
  sha256 "e2f722c90f7a83e7639ffc6467332589a50f7862a509947feda6dab96f818489"

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
