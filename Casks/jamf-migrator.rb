cask 'jamf-migrator' do
  version '4.0.0'
  sha256 '3a5ebc9a2649332e679381f30bed7f52fe2089207deb993d21176ea289596bca'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
