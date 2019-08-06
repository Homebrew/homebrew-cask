cask 'mudlet' do
  version '4.0.3'
  sha256 '77243fd2b019cbd3f47aec971c053bbf0b3d0601bcea1d8da70e97af844948f8'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
