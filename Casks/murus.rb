cask 'murus' do
  version '1.4.2'
  sha256 '8151c74e10568023ea26de8521d99b20cd2b2933dc6de6c920d3f95df47425c6'

  url "http://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'http://www.murusfirewall.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Murus.app'
end
