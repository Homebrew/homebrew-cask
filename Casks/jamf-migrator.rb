cask 'jamf-migrator' do
  version '4.1.2'
  sha256 '8e210bf88e6e8fcf56b5512f383a05205951054e5184797c1542e952ec3373a9'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
