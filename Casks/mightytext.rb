cask 'mightytext' do
  version '3.89.9'
  sha256 'a23fbadeb6ad1b1c7a9fc1e5705421ce570ce7e7595f3ccdcf4262dad190d1b8'

  url "https://dl-desktop.mightytext.net/MightyText-#{version}.dmg"
  name 'MightyText'
  homepage 'https://mightytext.net/'

  app 'MightyText.app'
end
