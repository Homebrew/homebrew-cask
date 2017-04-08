cask 'dbeaver-community' do
  version '4.0.4'
  sha256 '720a743e33155b45739c294fdee8e811083e7c21bdb88cef95fefaa8b167ba53'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '97b301b86c5667378c45b712a0d49efb0135165de6868d5fe091ccb96f6d1971'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
