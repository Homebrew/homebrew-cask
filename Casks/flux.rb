cask 'flux' do
  version '37.3'
  sha256 '8dd9cac699146971616817f1c8866ed26c8fde7724deb81ed63b406372ad93e3'

  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: 'a413e8ff23351345ad64ea0360dd17f6416b534d90bf8630401f4d8b1ee6bf02'
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
