cask 'flux' do
  version '37.1'
  sha256 'aaa1bc7533d487993f8b5ade5de2fd85adf7f398a0800c456286d11d88753752'

  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '504a2e6ae230f7f385e9a6ec286fd463752e0d512909824f4e57e5218fc08418'
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
