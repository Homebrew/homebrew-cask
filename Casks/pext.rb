cask "pext" do
  version "0.31"
  sha256 "54146ebec980b752e96ed110491dc52d348a120cc1b2cceafc1cdee4dc63ce81"

  # github.com/Pext/Pext/ was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast "https://github.com/Pext/Pext/releases.atom"
  name "Pext"
  desc "Python-based extendable tool"
  homepage "https://pext.io/"

  app "Pext.app"
end
