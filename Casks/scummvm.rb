cask "scummvm" do
  version "2.2.0"
  sha256 "fbe06e1d2ef271d44bb4f2a37340e49c0470becb9a3354b0e0f4eb4d27830a2c"

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast "https://www.scummvm.org/downloads/"
  name "ScummVM"
  homepage "https://www.scummvm.org/"

  app "ScummVM.app"
end
