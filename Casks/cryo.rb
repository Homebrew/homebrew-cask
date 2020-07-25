cask 'cryo' do
  version '0.5.16'
  sha256 '6792c4aece5af05c16ec57534e102d9f19bffc42a7c6b6cdf84d745834636771'

  url "https://cryonet.io/downloads/macos/cryo_#{version}_macos.zip"
  name 'cryo'
  homepage 'https://cryonet.io/'

  app 'cryo.app'
end
