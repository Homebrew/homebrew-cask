cask 'alfaview' do
  version '7.46613'
  sha256 '7a1c17a5a40952a4d612c21c349f0083871b19ea391c1324ae804e704b3e713e'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast 'https://alfaview.com/downloads'
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end
