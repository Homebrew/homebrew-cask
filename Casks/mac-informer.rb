cask :v1 => 'mac-informer' do
  version :latest
  sha256 :no_check

  url 'http://files.informer.com/simac.dmg'
  homepage 'http://macdownload.informer.com/landing/'
  license :unknown    # todo: improve this machine-generated value

  app 'Mac Informer.app'
end
