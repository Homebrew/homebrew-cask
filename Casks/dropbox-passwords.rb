cask "dropbox-passwords" do
  version "8.2.12"
  sha256 "f891e724be047cc3fef0d6804ad3e979a28b9cebd6c37ba49920395522eeb419"

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
