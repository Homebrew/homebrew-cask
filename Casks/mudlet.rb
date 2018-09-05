cask 'mudlet' do
  version '3.12.0'
  sha256 '85274634936ce7c6443f0ef383294b9411046f64606595c13344fbc8c8bd9ebf'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
