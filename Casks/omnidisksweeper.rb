cask :v1 => 'omnidisksweeper' do
  version :latest
  sha256 :no_check

  url 'https://www.omnigroup.com/download/latest/OmniDiskSweeper'
  name 'OmniDiskSweeper'
  homepage 'https://www.omnigroup.com/products/omnidisksweeper/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'OmniDiskSweeper.app'
end
