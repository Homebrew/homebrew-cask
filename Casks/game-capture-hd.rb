cask :v1 => 'game-capture-hd' do
  version '2.0.1_941'
  sha256 '0db1d5322b0f57a113452fab01cfa28c4bd379332f99844ec738e47824f65370'

  url "http://files.elgato.com/gamecapture/gchdm_#{version.gsub('.','')}.dmg"
  name 'Game Capture HD'
  homepage 'https://www.elgato.com/en/gaming/gamecapture-hd'
  license :commercial

  app 'Game Capture HD.app'
end
