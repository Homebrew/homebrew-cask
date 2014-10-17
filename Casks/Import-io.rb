class ImportIo < Cask
  version :latest
  sha256 :no_check

  url 'https://d24s8iufolpmlr.cloudfront.net/prod/dist-simple/import.io.dmg'
  homepage 'https://import.io/'
  license :commercial

<<<<<<< HEAD:Casks/Import-io.rb
  pkg 'install.pkg'
end
=======
  pkg 'install.pkg', :allow_untrusted => true
  installer :manual => 'install.pkg'
end
>>>>>>> 18d7f9b60e1308713d57e45b02c3bef8d3b8c6d5:Casks/Import_io.rb
