cask "dropbox-passwords" do
  version "5.1.4"
  sha256 "3e586ee75ff0b846371f37e17a12569a2683df112d3cd7f70931e60d53482c15"

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_passwords/mac/DropboxPasswords_#{version}.dmg"
  appcast "https://www.dropbox.com/dropbox-passwords-download/mac/beta"
  name "Dropbox Passwords"
  desc "Password manager that syncs across devices"
  homepage "https://www.dropbox.com/features/security/passwords"

  app "Dropbox Passwords.app"
end
