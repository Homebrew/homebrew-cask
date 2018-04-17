cask 'pgadmin4' do
  version '3.0'
  sha256 '9c0b6e68655f0c10fb457f66f173e62cde6e745e28033ed06849fd157b72dc04'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'https://www.pgadmin.org/'
  gpg "#{url}.sig", key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin 4.app'

  zap trash: [
               '~/.pgadmin',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*',
               '~/Library/Preferences/org.pgadmin.pgadmin4.plist',
               '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
             ]
end
