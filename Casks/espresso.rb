cask :v1 => 'espresso' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/espresso/get/'
  homepage 'http://macrabbit.com/espresso/'
  license :unknown    # todo: improve this machine-generated value

  app 'Espresso.app'
end
