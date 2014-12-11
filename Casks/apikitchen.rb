cask :v1 => 'apikitchen' do
  version '0.1'
  sha256 '98a8bbd80442bc8af50f2fca456e4357db27093133a421b29fe51c22b2e53e53'

  url "https://s3.amazonaws.com/envolto-static/ApiKitchen_#{version}.dmg"
  appcast 'http://apikitchen.com/updates/appcast.xml',
          :sha256 => '12eb770758f5d5f36bd92e67e9d0a0da85343a62d2679934812a6c17521d7501'
  homepage 'http://apikitchen.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'ApiKitchen.app'
end
