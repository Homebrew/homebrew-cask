cask 'mudlet' do
  version '3.20.1'
  sha256 '27c20c4fc104dab72468b099c21ebc87066a4b3aa473a224c79540ff584b13c2'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
