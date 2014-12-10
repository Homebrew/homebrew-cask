cask :v1 => 'sdrdx' do
  version :latest
  sha256 :no_check

  url 'http://fyngyrz.com/SdrDx-AA7AS-Light.zip'
  homepage 'http://fyngyrz.com/?p=915'
  license :unknown    # todo: improve this machine-generated value

  app 'SdrDx.app'
end
