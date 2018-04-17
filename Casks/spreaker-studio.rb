cask 'spreaker-studio' do
  version '1.4.13'
  sha256 'e33a16176ca72c8804bae23792123d6c6a4981f83483a89f423acd32cbbc998e'

  url "https://download.spreaker.com/studio/spreaker-studio-#{version}.dmg"
  name 'Spreaker Studio'
  homepage 'https://www.spreaker.com/download'

  app 'Spreaker Studio.app'
end
