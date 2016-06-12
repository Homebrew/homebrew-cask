cask 'microsoft-azure-storage-explorer' do
  version '0.8.0'
  sha256 'aeeb6d463367f9d31a31553d676af0382c62f1befdbd02c2a651da0affcfba6b'

  # microsoft.com was verified as official when first introduced to the cask
  url 'http://go.microsoft.com/fwlink/?LinkId=708342'
  name 'Microsoft Azure Storage Explorer'
  homepage 'http://storageexplorer.com/'
  license :gratis

  app 'Microsoft Azure Storage Explorer.app'
end
