cask 'gingko' do
  version '2.4.3'
  sha256 'e10f35c4f71bcf9eb283b0b941e834f39a5b96e3d0e4c3fb52981712319f5031'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
