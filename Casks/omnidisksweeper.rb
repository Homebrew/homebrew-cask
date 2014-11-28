cask :v1 => 'omnidisksweeper' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/OmniDiskSweeper'
  homepage 'http://www.omnigroup.com/products/omnidisksweeper/'
  license :unknown

  app 'OmniDiskSweeper.app'
end
