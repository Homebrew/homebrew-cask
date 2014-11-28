cask :v1 => 'globalsync' do
  version :latest
  sha256 :no_check

  url 'http://www.usglobalsat.com/store/download/25/globalsync.zip'
  homepage 'http://www.usglobalsat.com/'
  license :unknown

  app 'GlobalSync.app'
end
