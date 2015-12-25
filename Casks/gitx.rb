cask 'gitx' do
  version :latest
  sha256 :no_check

  url 'http://frim.frim.nl/GitXStable.app.zip'
  appcast 'http://gitx.frim.nl/Downloads/appcast.xml',
          :sha256 => '932c7654b3065834ed45218514ff4a5ac46292a5a04a83b1abacfdfb5f903532'
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
