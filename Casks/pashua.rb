cask 'pashua' do
  version :latest
  sha256 :no_check

  url 'https://www.bluem.net/files/Pashua.dmg'
  name 'Pashua'
  homepage 'https://www.bluem.net/en/mac/pashua/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pashua.app'
end
