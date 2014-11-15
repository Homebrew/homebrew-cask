cask :v1 => 'gitx' do
  version :latest
  sha256 :no_check

  url 'http://frim.frim.nl/GitXStable.app.zip'
  appcast 'http://gitx.frim.nl/Downloads/appcast.xml'
  homepage 'http://gitx.frim.nl/'
  license :unknown

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
