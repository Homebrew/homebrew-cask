cask 'laullon-gitx' do
  version '0.8.4'
  sha256 'c5f4088497abf5a219bb7bde4fae643fec61647be25bf836fd679567dcabd7df'

  # github.com/downloads/laullon was verified as official when first introduced to the cask
  url "https://github.com/downloads/laullon/gitx/GitX-L_v#{version}.zip"
  appcast 'http://gitx.laullon.com/appcast.xml',
          checkpoint: '8514821f4dd35269cfe030744f84a5c586e30215db82c54abbadb43f68a2a26b'
  name 'GitX (L)'
  homepage 'http://gitx.laullon.com/'

  conflicts_with cask: %w[
                         gitx
                         rowanj-gitx
                       ]

  app 'GitX.app'
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
