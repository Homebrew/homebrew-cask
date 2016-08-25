cask 'airmount' do
  version :latest
  sha256 :no_check

  url 'https://www.airmountapp.com/osx/AirMount.pkg'
  name 'AirMount'
  homepage 'https://www.airmountapp.com/'
  license :gratis

  depends_on cask: 'osxfuse'

  pkg 'AirMount.pkg'

  uninstall quit:    'com.tinkerstuff.AirMount',
            pkgutil: 'com.tinkerstuff.AirMount',
            delete:  '/Applications/AirMount.app'
end
