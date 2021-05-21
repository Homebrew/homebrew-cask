cask "psychopy" do
  version "2021.1.4"
  sha256 "6154d19d273a392757ca42517f0494ddbd35a39773676ed7fd50b572ae71c60c"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
