cask 'swimat' do
  version '1.5.0'
  sha256 '8a88598c20841e52af2f8160d1dde9c1173f65e878e4c918c32c7f67b0077d71'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '8e888809ec82489edd6f00f0b0cc7d506e801d65373d8a278993832bd1a9a025'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
