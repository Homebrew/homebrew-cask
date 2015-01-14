cask :v1 => 'espresso' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/espresso/get/'
  name 'Espresso'
  homepage 'http://macrabbit.com/espresso/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Espresso.app'
end
