cask 'cold-turkey' do
  version '3.1'
  sha256 :no_check

  url 'https://getcoldturkey.com/files/Cold_Turkey_Mac_Installer.pkg'
  name 'Cold Turkey'
  homepage 'https://getcoldturkey.com/'

  pkg 'Cold_Turkey_Mac_Installer.pkg'
end
