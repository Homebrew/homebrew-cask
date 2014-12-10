cask :v1 => 'simpholders' do
  version '1.5.0'
  sha256 '2f4fb58a20d94a858c4d53648ee37fd082e23f50ef3f367fbaef4d6cea840cd6'

  url "http://simpholders.com/site/assets/files/1007/simpholders-#{version.gsub('.','_')}.dmg"
  appcast 'http://kfi-apps.com/appcasts/simpholders/',
          :sha256 => 'baa9148ebfb168d1c86480da0863b89a9eeb7b70e8d8e1e5806c7f7e1a0fdec2'
  homepage 'http://simpholders.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'SimPholders.app'
end
