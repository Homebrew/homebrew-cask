cask "scummvm" do
  version "2.2.0"
  sha256 "4c0282992a19bf7ca668aa3b1207ea774c923eda936dee1089a11e70a17d1d65"

  url "https://scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  appcast "https://www.scummvm.org/downloads/"
  name "ScummVM"
  homepage "https://www.scummvm.org/"

  app "ScummVM.app"
end
