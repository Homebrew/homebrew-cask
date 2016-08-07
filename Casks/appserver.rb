cask 'appserver' do
  version '1.1.2-188'
  sha256 '4e35ab705e51d976071a9b5612da0a1c611fe628fb7daebfc93a2ec4ab729eeb'

  # github.com/appserver-io/appserver was verified as official when first introduced to the cask
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          checkpoint: 'aae37e43a351d3a37cffb369933b45ee9c3fc4127675ac48a76e333a3f31e229'
  name 'appserver.io'
  homepage 'http://www.appserver.io'
  license :oss

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall pkgutil: [
                       'com.techdivision.appserver-io.runtime',
                       'com.techdivision.appserver-io.source',
                     ]
end
