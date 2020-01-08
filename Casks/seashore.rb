cask 'seashore' do
  version '2.5.2'
  sha256 'c8cb57bbe2a4e4a1810766287e08f0b57908d7bae20743ab17fc2b3706da9186'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
