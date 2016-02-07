cask 'servus' do
  version :latest
  sha256 :no_check

  url 'https://servus.io/download'
  name 'Servus'
  homepage 'https://servus.io/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Servus.app'
end
