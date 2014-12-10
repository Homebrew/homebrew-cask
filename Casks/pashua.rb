cask :v1 => 'pashua' do
  version :latest
  sha256 :no_check

  url 'https://www.bluem.net/files/Pashua.dmg'
  homepage 'http://www.bluem.net/en/mac/pashua/'
  license :unknown    # todo: improve this machine-generated value

  app 'Pashua.app'
end
