cask :v1 => 'sdrdx' do
  version :latest
  sha256 :no_check

  url 'http://fyngyrz.com/SdrDx-AA7AS-Light.zip'
  name 'SdrDx'
  homepage 'http://fyngyrz.com/?p=915'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SdrDx.app'
end
