cask "jumpcut" do
  version "0.73"
  sha256 "7b507c01280d4b83ae2db3be9a1174b3303ac00341e6ad63cec90f8a6c44d3f3"

  # github.com/snark/jumpcut/ was verified as official when first introduced to the cask
  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2"
  appcast "https://github.com/snark/jumpcut/releases.atom"
  name "Jumpcut"
  desc "Clipboard manager"
  homepage "https://snark.github.io/jumpcut/"

  depends_on macos: ">= :el_capitan"

  app "Jumpcut.app"
end
