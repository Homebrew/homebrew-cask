cask :v1 => 'nulloy' do
  version '0.8'
  sha256 '5b10d5cbdca84937e4975c463933e52bf87a60d7ff5c291449b08f30cb7c3820'

  url "https://github.com/nulloy/nulloy/releases/download/#{version}/Nulloy-#{version}-universal.dmg"
  appcast 'https://github.com/nulloy/nulloy/releases.atom'
  name 'Nulloy'
  homepage 'http://nulloy.com/'
  license :gpl

  app 'Nulloy.app'
end
