cask 'simpholders' do
  version '2.1'
  sha256 '68472926b108bc46b84fd2b6c1083b9fd1810f5fb70fc0924818d60f5bb8e668'

  url "https://simpholders.com/site/assets/files/1115/simpholders_#{version.gsub('.', '_')}.dmg"
  appcast 'http://kfi-apps.com/appcasts/simpholders/',
          checkpoint: '07be0732567d5bc05c651e17af1276e2b29ab16f29b61dce3be4ee606833da92'
  name 'SimPholders'
  homepage 'https://simpholders.com/'
  license :commercial

  app 'SimPholders.app'
end
