cask 'flux' do
  version '36.8'
  sha256 '67e0b9dfdb92e4f2c0826db153c7277ed1cbae48d7a3cf59c8ef14f8d64cc587'

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
