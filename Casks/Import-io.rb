class ImportIo < Cask
  version :latest
  sha256 :no_check

  url 'https://d24s8iufolpmlr.cloudfront.net/prod/dist-simple/import.io.dmg'
  homepage 'https://import.io/'
  license :commercial

  pkg 'install.pkg'
  uninstall :pkgutil => 'com.importio.builder.product.id.savedState'
  zap       :delete => '~/desktop/import.io.app'
            
end
