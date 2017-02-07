cask 'healthi' do
  version '2.0.0'
  sha256 '4a188be7ff4a18cbae09e8760f0e3a9e4bfc63dc7e85659842232abdb0cdce2a'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: '08b04f7209a2f71570827599563a1304ebc06878e4fe735d6ab816437a3d235a'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end
