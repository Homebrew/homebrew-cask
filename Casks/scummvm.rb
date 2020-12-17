cask "scummvm" do
  version "2.2.0"
  sha256 "4d9721b97a3adc2e7fd956676284bf9900f48d2aaeda7f2a11a45c9c95e0fe63"

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast "https://www.scummvm.org/downloads/"
  name "ScummVM"
  homepage "https://www.scummvm.org/"

  app "ScummVM.app"
end
