cask 'mightytext' do
  version '4.2.0'
  sha256 'fe47c32999ed1d98fa0f8824b345a2a0776f5342f8170ddb71a26e26049698d9'

  url "https://dl-desktop.mightytext.net/MightyText-#{version}.dmg"
  appcast 'https://mightytext.net/mac-desktop-download'
  name 'MightyText'
  homepage 'https://mightytext.net/'

  app 'MightyText.app'
end
