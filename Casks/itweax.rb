cask 'itweax' do
  version :latest
  sha256 :no_check

  url 'http://www.itweax.net/itweax.dmg'
  name 'iTweaX'
  homepage 'http://www.itweax.net/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iTweaX.app'
end
