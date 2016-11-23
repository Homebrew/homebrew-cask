cask 'armitage' do
  version '15.08.13'
  sha256 'f44af478248fd01e71ea7e7bcfa558e4c9b291a78b0d1df1ad245c34cabd896b'

  url "http://www.fastandeasyhacking.com/download/armitage#{version.no_dots}.dmg"
  name 'Armitage'
  homepage 'http://www.fastandeasyhacking.com/'

  app 'Armitage.app'
end
