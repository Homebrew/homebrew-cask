cask "dropbox-passwords" do
  version "5.2.4"
  sha256 "74d41ac8296c4dfa71cda236320173c83856b1d99fcc6bcc9de820d669cd85ba"

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_passwords/mac/DropboxPasswords_#{version}.dmg"
  appcast "https://www.dropbox.com/dropbox-passwords-download/mac/stable"
  name "Dropbox Passwords"
  desc "Password manager that syncs across devices"
  homepage "https://www.dropbox.com/features/security/passwords"

  app "Dropbox Passwords.app"
end
