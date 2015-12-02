cask :v1 => 'simpholders' do
  version '2.1'
  sha256 '68472926b108bc46b84fd2b6c1083b9fd1810f5fb70fc0924818d60f5bb8e668'

  url "http://simpholders.com/site/assets/files/1115/simpholders_#{version.gsub('.','_')}.dmg"
  appcast 'http://kfi-apps.com/appcasts/simpholders/',
          :sha256 => 'baa9148ebfb168d1c86480da0863b89a9eeb7b70e8d8e1e5806c7f7e1a0fdec2'
  name 'SimPholders'
  homepage 'http://simpholders.com/'
  license :commercial

  app 'SimPholders.app'
end
