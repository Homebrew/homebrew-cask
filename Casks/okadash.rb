cask 'okadash' do
  version '1.3.0'
  sha256 'deb1a9a8bb35df7e5cdbe77eb38807cf11012457ceaadf861569faf0cd0e4e61'

  url "https://github.com/konoyono/okadash/releases/download/#{version}/okadash-#{version}-mac.zip"
  appcast 'https://github.com/konoyono/okadash/releases.atom'
  name 'okadash'
  homepage 'https://github.com/konoyono/okadash'

  app 'okadash.app'
end
