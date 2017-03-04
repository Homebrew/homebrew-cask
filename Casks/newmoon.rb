cask 'newmoon' do
  version '26.5.0-131'
  sha256 '617581f55863b2ab0f55538791d2c82a06378febffebce14b8d1c1d625f465cb'

  url "https://mac.palemoon.org/dist/palemoon-#{version}-gstreamer.en-US.mac64.dmg"
  name 'Pale Moon'
  homepage 'https://www.palemoon.org/'

  app 'NewMoon.app'
end
