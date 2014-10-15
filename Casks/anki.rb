class Anki < Cask
  version '2.0.29'
  sha256 '2eea38eca7e4f720c01a10ffdbfe0b73c9ac06648483103ed034f9db6660c07a'

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  homepage 'http://ankisrs.net/'
  license :unknown

  app 'Anki.app'
end
