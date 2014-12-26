cask :v1 => 'servus' do
  version :latest
  sha256 :no_check

  url 'https://servus.io/download'
  homepage 'https://servus.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Servus.app'
end
