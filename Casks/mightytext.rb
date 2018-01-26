cask 'mightytext' do
  version '3.88.18'
  sha256 '9bece607493ef5997eda9ab11261217bece836ceafa9ae90291653028d3326dc'

  url "https://dl-desktop.mightytext.net/MightyText-#{version}.dmg"
  name 'MightyText'
  homepage 'https://mightytext.net/'

  app 'MightyText.app'
end
