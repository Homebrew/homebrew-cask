cask 'qtpass' do
  version '1.1.0'
  sha256 '3425bd777af74b116c071f7b04dabfda788844cbf01f6bdf435015e586e6bbfa'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '4d3beffb4da142bc793177247060f7c3f8712a09ccb43f08de930b80c8f2eb98'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
