cask 'murus' do
  version '1.3'
  sha256 '66dd2d286b9567a02b8dafb83a7e848f8743d7dd6ef662e9b379496613442c50'

  url "http://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'http://www.murusfirewall.com'
  license :freemium

  depends_on :macos => '>= :mavericks'
  container :nested => "Murus #{version}.dmg"

  app 'Murus.app'
end
