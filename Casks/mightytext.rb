cask 'mightytext' do
  version '3.90.2'
  sha256 'c10f410492b323bd58c1ecd28cc6aa945e12e65a80042526055e7d86acc0fabe'

  url "https://dl-desktop.mightytext.net/MightyText-#{version}.dmg"
  name 'MightyText'
  homepage 'https://mightytext.net/'

  app 'MightyText.app'
end
