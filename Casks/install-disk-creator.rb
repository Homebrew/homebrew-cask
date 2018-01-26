cask 'install-disk-creator' do
  version :latest
  sha256 :no_check

  url 'https://macdaddy.io/InstallDiskCreator.zip'
  name 'Install Disk Creator'
  homepage 'https://macdaddy.io/install-disk-creator/'

  app 'Install Disk Creator.app'

  zap trash: '~/Library/Saved Application State/io.macdaddy.Install-Disk-Creator.savedState'
end
