cask "dosbox-x" do
  version "0.83.6,20200930235614"
  sha256 "acdbc504a38b8cdec89e53c41a26f3735b7467f09a993cdcf1d0243ad0778a30"

  # github.com/joncampbell123/dosbox-x/ was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast "https://github.com/joncampbell123/dosbox-x/releases.atom"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  app "dosbox-x/dosbox-x.app"
end
