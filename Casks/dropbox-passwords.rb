cask "dropbox-passwords" do
  version "7.2.25"
  sha256 "8ef1fd2a6d1aac57b5bdcade398fa0bc387a9a079113df66e96fa56817269a06"

  # clientupdates.dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_passwords/mac/DropboxPasswords_#{version}.dmg"
  appcast "https://www.dropbox.com/dropbox-passwords-download/mac/stable"
  name "Dropbox Passwords"
  desc "Password manager that syncs across devices"
  homepage "https://www.dropbox.com/features/security/passwords"

  app "Dropbox Passwords.app"
end
