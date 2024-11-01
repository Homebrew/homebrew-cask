cask "dropbox-passwords" do
  version "8.2.14"
  sha256 "02540fc02289845c12deb6f35c0a4cb63e31978a28793002a4046ee2dcf9d6fa"

  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_passwords/mac/DropboxPasswords_#{version}.dmg",
      verified: "clientupdates.dropboxstatic.com/"
  name "Dropbox Passwords"
  desc "Password manager that syncs across devices"
  homepage "https://www.dropbox.com/features/security/passwords"

  deprecate! date: "2024-11-01", because: :discontinued

  depends_on macos: ">= :sierra"

  app "Dropbox Passwords.app"

  caveats do
    requires_rosetta
  end
end
