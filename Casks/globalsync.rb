cask 'globalsync' do
  version :latest
  sha256 :no_check

  url 'http://www.usglobalsat.com/store/download/25/globalsync.zip'
  name 'GlobalSync'
  homepage 'http://www.usglobalsat.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GlobalSync.app'
end
