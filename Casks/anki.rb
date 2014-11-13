cask :v1 => 'anki' do
  version '2.0.31'
  sha256 '7afccba7d7998c187156702afb943e0be2b9d14729c8147b9a6fd20e40530fe2'

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  homepage 'http://ankisrs.net/'
  license :unknown

  app 'Anki.app'
end
