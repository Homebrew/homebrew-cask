cask 'gzdoom' do
  version '3.2.5a'
  sha256 '9d27195c089e8a4303d302c33f35d1450527759ce04f407ae3c8f84648a093db'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '181a0c034f31ed48223a675b59814e6a9ed0e5b1ce649d5ef5eaa50b6c97764c'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
