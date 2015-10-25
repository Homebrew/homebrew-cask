cask :v1 => 'flux' do
  version '36-4'
  sha256 'a20b23538224c18948ce9a38c259c5c2b6e727accd0fc323eee6433c45a32015'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml'
  name 'f.lux'
  homepage 'https://justgetflux.com/'
  license :gratis

  app 'Flux.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/org.herf.Flux.plist'
end
