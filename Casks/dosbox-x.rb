cask "dosbox-x" do
  version "0.83.4,20200802220401"
  sha256 "5c88228cfe2bfef4947b14b7352c2d0369a76645a13b1c7612400148cef5e416"

  # github.com/joncampbell123/dosbox-x/ was verified as official when first introduced to the cask
  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x64-#{version.after_comma}.zip"
  appcast "https://github.com/joncampbell123/dosbox-x/releases.atom"
  name "DOSBox-X"
  homepage "https://dosbox-x.com/"

  app "dosbox-x/dosbox-x.app"
end
