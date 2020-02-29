cask 'mudlet' do
  version '4.5.2'
  sha256 '520fef5e417631116e52b7fd46e805c369d0adfaed583dae8b05073637abd005'

  url "https://www.mudlet.org/wp-content/files/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  depends_on macos: '>= :high_sierra'

  app 'Mudlet.app'
end
