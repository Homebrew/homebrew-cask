cask :v1 => 'itweax' do
  version :latest
  sha256 :no_check

  url 'http://www.itweax.net/itweax.dmg'
  homepage 'http://www.itweax.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'iTweaX.app'
end
