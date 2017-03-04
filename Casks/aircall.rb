cask 'aircall' do
  version '1.3.0'
  sha256 '49c2aa6bbdd9c6c579545ab5f89dd83e57469040008452f500a735cae0c32d0d'

  url "https://electron.aircall.io/download/#{version}/osx"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: '43301a5ffe74fea9d4cf0271b110c80201e839a0af1b69c077057f3b192b898e'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
