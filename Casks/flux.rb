cask 'flux' do
  version '37.7'
  sha256 'c4fe43b47c5adc0b066a78a60e99a5dc91466610d9a3660a85104f9fe32a1150'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: 'f47b77b5102fc5c62caf76c7a031c47093ea29e376131398b9fa51fbe382b740'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  auto_updates true

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall login_item: 'Flux'

  zap delete: [
                '~/Library/Preferences/org.herf.Flux.plist',
                '~/Library/Caches/org.herf.Flux',
              ]
end
