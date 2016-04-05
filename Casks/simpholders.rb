cask 'simpholders' do
  version '2.2'
  sha256 '0f12b0076f2bef08cd3129916a6fbe6f92bd7601a96bc787bfc0c5feda4b4d4a'

  url "https://simpholders.com/site/assets/files/1115/simpholders_#{version.gsub('.', '_')}.dmg"
  appcast 'http://kfi-apps.com/appcasts/simpholders/',
          checkpoint: '07be0732567d5bc05c651e17af1276e2b29ab16f29b61dce3be4ee606833da92'
  name 'SimPholders'
  homepage 'https://simpholders.com/'
  license :commercial

  app 'SimPholders.app'
end
