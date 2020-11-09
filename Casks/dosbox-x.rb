cask "dosbox-x" do
  version "0.83.7,20201101004123"
  sha256 "de8f365f6cb886f71899e1c869b70f968cc2e22529b953c467e80c0842fb5227"

  # github.com/joncampbell123/dosbox-x/ was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast "https://github.com/joncampbell123/dosbox-x/releases.atom"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  app "dosbox-x/dosbox-x.app"
end
