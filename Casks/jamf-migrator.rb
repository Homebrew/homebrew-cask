cask 'jamf-migrator' do
  version '5.1.0'
  sha256 '3f602c2d74f0092d03aa514cbfb5f533b837278d8889c8f09983e4f60655cfae'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
