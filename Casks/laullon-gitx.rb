cask 'laullon-gitx' do
  version '0.8.4'
  sha256 'c5f4088497abf5a219bb7bde4fae643fec61647be25bf836fd679567dcabd7df'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/downloads/laullon/gitx/GitX-L_v#{version}.zip"
  appcast 'http://gitx.laullon.com/appcast.xml',
          :sha256 => '7ce5197de931145d75c57c2171fba559481e79e23bedd58ec107b476731f693b'
  name 'GitX (L)'
  homepage 'http://gitx.laullon.com/'
  license :gpl

  conflicts_with :cask => %w[
                            gitx
                            rowanj-gitx
                          ]

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
