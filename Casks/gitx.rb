cask :v1 => 'gitx' do
  version :latest
  sha256 :no_check

  url 'http://frim.frim.nl/GitXStable.app.zip'
  appcast 'http://gitx.frim.nl/Downloads/appcast.xml'
  name 'GitX'
  homepage 'http://gitx.frim.nl/'
  license :gpl

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'

  conflicts_with :cask => %w{
                             laullon-gitx
                             rowanj-gitx
                            }
end
