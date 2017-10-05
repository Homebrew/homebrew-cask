cask 'crypter' do
  version '3.1.0'
  sha256 '2f2f62f23beb03dd391ad3775ab85804c34038a4483877a4805a711f58beacfb'

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  appcast 'https://github.com/HR/Crypter/releases.atom',
          checkpoint: '3d2158d9e671541e5fd7ce2c8e32e7c883aa9b9221681c16d4b753caef6b1fe5'
  name 'Crypter'
  homepage 'https://github.com/HR/Crypter'

  app 'Crypter.app'
end
