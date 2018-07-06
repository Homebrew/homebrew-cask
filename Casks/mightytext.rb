cask 'mightytext' do
  version '3.91.2'
  sha256 '882cbe86911050bca30c293523b7156106cd05237e509e3fd171d317e933d5b5'

  url "https://dl-desktop.mightytext.net/MightyText-#{version}.dmg"
  name 'MightyText'
  homepage 'https://mightytext.net/'

  app 'MightyText.app'
end
