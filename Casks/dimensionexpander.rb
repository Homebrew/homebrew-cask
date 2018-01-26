cask 'dimensionexpander' do
  version :latest
  sha256 :no_check

  url 'https://xferrecords.com/product_downloads/32/freeware'
  name 'Dimension Expander'
  homepage 'https://xferrecords.com/freeware'

  pkg 'Install_Xfer_DimensionExpander.pkg'

  uninstall pkgutil: %r{com.xfer.DimensionExpander.*}
end
