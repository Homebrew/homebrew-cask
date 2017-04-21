cask 'go-server' do
  version '17.3.0-4704'
  sha256 '23c60e0c95a2a459e66a891f974f0e580b4bf2832398948e42aab086b531ea34'

  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'ce17e0124c329cc9c755c014579480f4ac0ffb78543db6da611c86ba09cd74b7'
  name 'Go Server'
  homepage 'https://www.gocd.io/'

  app 'Go Server.app'
end
