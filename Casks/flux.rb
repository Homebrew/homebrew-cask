cask 'flux' do
  version '37.2'
  sha256 'db2093498c916f315b6fada84fc85a0713329907367a9227f7f959e44790c700'

  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '1afd3d6ba266d06cbbea23aa6d187b6a9104d016212c0ead8ad9b8b1c7fc7295'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  auto_updates true

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Flux'

  zap delete: '~/Library/Preferences/org.herf.Flux.plist'
end
