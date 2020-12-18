cask "dosbox-x" do
  version "0.83.8,20201130192748"
  sha256 "2f8c06d1cfe42e1600bbb16116951939eee8e6d64a25f585d1b756964ff9911f"

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x86_64-#{version.after_comma}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  appcast "https://github.com/joncampbell123/dosbox-x/releases.atom"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  app "dosbox-x-macosx-x86_64-#{version.after_comma}/dosbox-x/dosbox-x.app"
end
