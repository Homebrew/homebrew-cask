cask 'mudlet' do
  version '3.20.0'
  sha256 '8933d7c4886fb876f84fc456f2eb948b6f89c36a967e28594d01528ef5764369'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :sierra'

  app 'Mudlet.app'
end
