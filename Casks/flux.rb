cask 'flux' do
  version '37'
  sha256 '4fdcbf481b96e1bcda637956269c61791158183c3e0c035460a091eb3d3219d3'

  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '1afd3d6ba266d06cbbea23aa6d187b6a9104d016212c0ead8ad9b8b1c7fc7295'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Flux'

  zap delete: '~/Library/Preferences/org.herf.Flux.plist'
end
