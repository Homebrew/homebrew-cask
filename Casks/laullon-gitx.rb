cask 'laullon-gitx' do
  version '0.8.4'
  sha256 'c5f4088497abf5a219bb7bde4fae643fec61647be25bf836fd679567dcabd7df'

  # github.com/downloads/laullon was verified as official when first introduced to the cask
  url "https://github.com/downloads/laullon/gitx/GitX-L_v#{version}.zip"
  appcast 'http://gitx.laullon.com/appcast.xml',
          checkpoint: 'e4fce47175b38b461d1065919a82a2072652afe233adfe43fb22cb438907e9db'
  name 'GitX (L)'
  homepage 'http://gitx.laullon.com/'

  conflicts_with cask: [
                         'gitx',
                         'rowanj-gitx',
                       ]

  app 'GitX.app'
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"
end
