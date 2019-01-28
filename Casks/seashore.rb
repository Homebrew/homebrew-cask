cask 'seashore' do
  version '2.3.2'
  sha256 '412cfbf7c74133d1d5bcf9d118caaf84350fedb5a8cf5ff4a89c98daa3f1ae37'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
