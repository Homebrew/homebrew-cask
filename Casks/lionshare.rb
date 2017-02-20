cask 'lionshare' do
  version '1.1.0'
  sha256 '01f20b957f9bd298bad75e8361278767e4b30ae8ffebb61f85a199a1bc1128d8'

  # github.com/lionsharecapital/lionshare-desktop was verified as official when first introduced to the cask
  url "https://github.com/lionsharecapital/lionshare-desktop/releases/download/v#{version}/Lionshare-#{version}-mac.zip"
  appcast 'https://github.com/lionsharecapital/lionshare-desktop/releases.atom',
          checkpoint: '4cc64f2d727a19848192b7b589d71e4021cfaefcf7b46c86c09bfb0e8db49c0f'
  name 'Lionshare'
  homepage 'https://lionshare.capital/'

  app 'Lionshare.app'
end
