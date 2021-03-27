cask "dropbox-passwords" do
  version "7.2.36"
  sha256 "51c57af430f2a90ae91c436096e3c09a141fcede5b06838733acd75f6c1b1655"

  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_passwords/mac/DropboxPasswords_#{version}.dmg",
      verified: "clientupdates.dropboxstatic.com/"
  appcast "https://www.dropbox.com/dropbox-passwords-download/mac/stable"
  name "Dropbox Passwords"
  desc "Password manager that syncs across devices"
  homepage "https://www.dropbox.com/features/security/passwords"

  app "Dropbox Passwords.app"
end
