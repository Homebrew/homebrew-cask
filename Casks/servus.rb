cask :v1 => 'servus' do
  version :latest
  sha256 :no_check

  url 'https://servus.io/download'
  homepage 'https://servus.io/'
  license :unknown    # todo: improve this machine-generated value

  app 'Servus.app'
end
