cask 'openaudible' do
  version '2.0'
  sha256 '050f6335c938e1372e703f789ccb570c0dc7a87efae7e5cbf0c596afcf5d1ae1'

  # github.com/openaudible was verified as official when first introduced to the cask
  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg"
  appcast 'https://github.com/openaudible/openaudible/releases.atom'
  name 'OpenAudible'
  homepage 'https://openaudible.org/'

  app 'OpenAudible.app'

  zap trash: '/Library/OpenAudible'
end
