cask 'electrum-stratis' do
  version '2.7.17'
  sha256 '34383e5cb9d4adfa803746893051c0eaed5a43d3b9ea7589aabd74b288650453'

  url "https://github.com/stratisproject/electrum-stratis/releases/download/#{version}/electrum-stratis-#{version}-macosx.dmg"
  appcast 'https://github.com/stratisproject/electrum-stratis/releases.atom',
          checkpoint: 'e61ee580b685b63dc9cf3790606a8212a4a3d44323cb4bf6a68c9a7e0b4a52e3'
  name 'Electrum-Stratis'
  homepage 'https://github.com/stratisproject/electrum-stratis'

  app 'Electrum-Stratis.app'
end
