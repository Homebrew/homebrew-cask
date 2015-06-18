cask :v1 => 'murus' do
  version '1.1.2'
  sha256 'df4f1a005227cd3bd98ed3b1d1587ba7a30c4ec6e21c6c30d58284402e1b49a5'

  url "http://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'http://www.murusfirewall.com'
  license :freemium

  container :nested => "Murus #{version}.dmg"
  app 'Murus.app'

  depends_on :macos => %w{
                          :mavericks
                          :yosemite
                         }
end
