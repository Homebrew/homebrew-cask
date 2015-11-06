cask :v1 => 'simpholders' do
  version '2.0'
  sha256 'f98517e2dc3eee2a564409d1bb0e59239a4221048102b67477c3f754436596bb'

  url "http://simpholders.com/site/assets/files/1115/simpholders_#{version.gsub('.','_')}.dmg"
  appcast 'http://kfi-apps.com/appcasts/simpholders/',
          :sha256 => 'baa9148ebfb168d1c86480da0863b89a9eeb7b70e8d8e1e5806c7f7e1a0fdec2'
  name 'SimPholders'
  homepage 'http://simpholders.com/'
  license :commercial

  app 'SimPholders.app'
end
