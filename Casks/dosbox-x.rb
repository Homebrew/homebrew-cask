cask "dosbox-x" do
  version "0.83.9,20201231203002"
  sha256 "af55d06fb9277c62708b1b8f22bba3d3555744eab759700d0e5e4cd0d439abe5"

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x86_64-#{version.after_comma}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  appcast "https://github.com/joncampbell123/dosbox-x/releases.atom"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  app "dosbox-x-macosx-x86_64-#{version.after_comma}/dosbox-x/dosbox-x.app"
end
