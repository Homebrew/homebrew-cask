cask 'simpholders' do
  version '2.1'
  sha256 '68472926b108bc46b84fd2b6c1083b9fd1810f5fb70fc0924818d60f5bb8e668'

  url "https://simpholders.com/site/assets/files/1115/simpholders_#{version.gsub('.', '_')}.dmg"
  appcast 'http://kfi-apps.com/appcasts/simpholders/',
          :checkpoint => '77553407d522f5ab83aefb172b6f2072999a72e67035f638a51a476ec78a90a1'
  name 'SimPholders'
  homepage 'https://simpholders.com/'
  license :commercial

  app 'SimPholders.app'
end
