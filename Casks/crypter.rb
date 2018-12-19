cask 'crypter' do
  version '3.1.0'
  sha256 '2f2f62f23beb03dd391ad3775ab85804c34038a4483877a4805a711f58beacfb'

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  appcast 'https://github.com/HR/Crypter/releases.atom'
  name 'Crypter'
  homepage 'https://github.com/HR/Crypter'

  app 'Crypter.app'
end
