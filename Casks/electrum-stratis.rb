cask 'electrum-stratis' do
  version '2.7.17'
  sha256 '34383e5cb9d4adfa803746893051c0eaed5a43d3b9ea7589aabd74b288650453'

  url "https://github.com/stratisproject/electrum-stratis/releases/download/#{version}/electrum-stratis-#{version}-macosx.dmg"
  appcast 'https://github.com/stratisproject/electrum-stratis/releases.atom',
          checkpoint: '3201ceda339f5fca6ff2f75e23a6b115de918152a3deab94752e9dda7491840d'
  name 'Electrum-Stratis'
  homepage 'https://github.com/stratisproject/electrum-stratis'

  app 'Electrum-Stratis.app'
end
