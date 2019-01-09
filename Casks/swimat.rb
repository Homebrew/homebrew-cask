cask 'swimat' do
  version '1.6'
  sha256 '1d76589e074c2d05351de098d1d78156b96dfb9e5bfd01e421b6e0373e0a0101'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
