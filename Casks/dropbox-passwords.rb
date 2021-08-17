cask "dropbox-passwords" do
  version "8.2.13"
  sha256 "90e3dec11898644cd9855d2f00d08be51798827e9364ee06bed06cacf9e36eda"

  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_passwords/mac/DropboxPasswords_#{version}.dmg",
      verified: "clientupdates.dropboxstatic.com/"
  name "Dropbox Passwords"
  desc "Password manager that syncs across devices"
  homepage "https://www.dropbox.com/features/security/passwords"

  livecheck do
    url "https://www.dropbox.com/dropbox-passwords-download/mac/stable"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Dropbox Passwords.app"
end
