class GitxL < Cask
  version '0.8.4'
  sha256 'c5f4088497abf5a219bb7bde4fae643fec61647be25bf836fd679567dcabd7df'

  url "https://github.com/downloads/laullon/gitx/GitX-L_v#{version}.zip"
  appcast 'http://gitx.laullon.com/appcast.xml'
  homepage 'http://gitx.laullon.com/'
  license :oss

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
