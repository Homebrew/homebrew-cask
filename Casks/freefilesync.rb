cask 'freefilesync' do
  version '7.9'
  sha256 'c0381ba507fee51438aaed4b47713f8e5c46db1a3884a3e91987ca86ed77663e'

  url "http://www.freefilesync.org/download/wr445e13teinh3m/FreeFileSync_#{version}_Mac_OS_X_64-bit.zip",
      referer: 'http://www.freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'http://www.freefilesync.org'
  license :gpl

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
