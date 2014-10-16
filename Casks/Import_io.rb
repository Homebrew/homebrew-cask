class Import_io < Cask
  version :latest
  sha256 :no_check

  url 'https://d24s8iufolpmlr.cloudfront.net/prod/dist-simple/import.io.dmg'
  homepage 'https://import.io/'
  license :commercial

  pkg 'install.pkg', :allow_untrusted => true
  installer :manual => 'install.pkg'
end
