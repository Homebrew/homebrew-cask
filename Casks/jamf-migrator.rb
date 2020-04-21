cask 'jamf-migrator' do
  version '5.2.2'
  sha256 'a7fb2930b41d52a49cc9a509e0fd9aea4ce6e5d0c3c2f9d3b1e3aa4880d9f1a6'

  url 'https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip'
  appcast 'https://github.com/jamf/JamfMigrator/releases.atom'
  name 'JamfMigrator'
  homepage 'https://github.com/jamf/JamfMigrator'

  depends_on macos: '>= :sierra'

  app 'jamf-migrator.app'
end
