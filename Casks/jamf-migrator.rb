cask 'jamf-migrator' do
  version '5.2.0'
  sha256 '548bc64e1b3d04594289df6ad8db08b3d19d0a80e0ea236fbb1e213c180bb5b0'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
