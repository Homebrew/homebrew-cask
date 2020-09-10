cask "dropbox-passwords" do
  version :latest
  sha256 :no_check

  url "https://www.dropbox.com/dropbox-passwords-download/install?platform=mac"
  name "Dropbox Passwords"
  desc "Password manager that syncs across devices"
  homepage "https://www.dropbox.com/features/security/passwords"

  app "Dropbox Passwords.app"
end
