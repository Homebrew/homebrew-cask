cask 'airmount' do
  version :latest
  sha256 :no_check

  url 'https://cdn.airmountapp.com/download/osx/installers/AirMount.pkg'
  name 'AirMount'
  homepage 'https://www.airmountapp.com/'

  depends_on cask: 'osxfuse'

  pkg 'AirMount.pkg'

  uninstall quit:    'com.tinkerstuff.AirMount',
            pkgutil: 'com.tinkerstuff.AirMount'
end
