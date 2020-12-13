cask "raven" do
  version "0.2.0-alpha"
  sha256 "91792dfbe2abbc13f79bcafbe903e697f99b5abccfa900084b015e2c642eb633"

  url "https://github.com/robotlolita/raven/releases/download/v#{version}/Raven-osx.zip",
      verified: "github.com/robotlolita/raven/"
  appcast "https://github.com/robotlolita/raven/releases.atom"
  name "Raven"
  desc "Minimal, distraction-free text editor"
  homepage "https://robotlolita.me/raven/"

  app "Raven.app"
end
