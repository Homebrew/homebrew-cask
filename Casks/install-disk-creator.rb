cask 'install-disk-creator' do
  version :latest
  sha256 :no_check

  url 'http://macdaddy.io/InstallDiskCreator.zip'
  name 'Install Disk Creator'
  homepage 'http://macdaddy.io/install-disk-creator/'
  license :unknown

  app 'Install Disk Creator.app'
end
