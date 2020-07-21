cask 'cryo' do
  version '0.5.14'
  sha256 '4688112bcfa04d56501c8aa1c82e1a48577df01beebbc3167fc5cc1a499aa2bc'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
