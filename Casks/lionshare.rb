cask 'lionshare' do
  version '1.1.0'
  sha256 '01f20b957f9bd298bad75e8361278767e4b30ae8ffebb61f85a199a1bc1128d8'

  # github.com/lionsharecapital/lionshare-desktop was verified as official when first introduced to the cask
  url "https://github.com/lionsharecapital/lionshare-desktop/releases/download/v#{version}/Lionshare-#{version}-mac.zip"
  appcast 'https://github.com/lionsharecapital/lionshare-desktop/releases.atom',
          checkpoint: 'ef7bc1afe1ade8dd8d74caf9062116885348530dbb52bbc1d72efa9003f8f57d'
  name 'Lionshare'
  homepage 'https://lionshare.capital/'

  app 'Lionshare.app'
end
