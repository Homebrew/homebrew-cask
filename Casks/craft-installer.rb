cask 'craft-installer' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/www-assets.invisionapp.com/labs/CraftInstaller-osx.zip'
  name 'Craft Installer'
  homepage 'http://labs.invisionapp.com/craft'
  license :commercial

  app 'CraftInstaller.app'
end
