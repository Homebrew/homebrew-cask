cask "dosbox-x" do
  version "0.83.9,20201231203002"
  sha256 "e2a15bc4cfda649a1eb131a3a69b1e9599016710426b84b6f00dd1979a73e2eb"

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x86_64-#{version.after_comma}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  appcast "https://github.com/joncampbell123/dosbox-x/releases.atom"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  app "dosbox-x-macosx-x86_64-#{version.after_comma}/dosbox-x/dosbox-x.app"
end
