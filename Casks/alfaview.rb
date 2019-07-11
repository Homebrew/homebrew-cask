cask 'alfaview' do
  version '7.43243'
  sha256 'fe7d1c7b8f7d75ec64ed38b117c5869293d458c92225a64aafc9504d6e0314d2'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end
