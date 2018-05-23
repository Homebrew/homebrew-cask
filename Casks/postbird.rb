cask 'postbird' do
  version '0.7.1'
  sha256 'a079c87a85f5610d356260909243742c35f93883afb8eb6c740b3ae807fce666'

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast 'https://github.com/Paxa/postbird/releases.atom',
          checkpoint: '75051a908926bd97c430aa6a04859b212b337454610c0e7289f0754c455a85a7'
  name 'Postbird'
  homepage 'https://github.com/Paxa/postbird'

  app 'Postbird.app'
end
