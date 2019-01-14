cask 'seashore' do
  version '2.1.8'
  sha256 '9b0531d900603f7476397e1cdca2cbb278d3cb6181021a15d2212d3703b6328a'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
