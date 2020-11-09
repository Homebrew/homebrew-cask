cask "scummvm" do
  version "2.2.0"
  sha256 "044de5abed5e86a67a36b1793e6099b3175b612c4130a92bdc88acc73e980a5e"

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast "https://www.scummvm.org/downloads/"
  name "ScummVM"
  homepage "https://www.scummvm.org/"

  app "ScummVM.app"
end
