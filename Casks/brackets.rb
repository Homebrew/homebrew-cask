class Brackets < Cask
  version '0.42'
  sha256 'd4c1d5f473b22311fc47dcd2546262ea46e468441d93dacaaaacaaf1ecdaa788'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  homepage 'http://brackets.io'

  link 'Brackets.app'
end
