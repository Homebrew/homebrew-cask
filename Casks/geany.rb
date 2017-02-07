cask 'geany' do
  version '1.29'
  sha256 '794d373a13287513608deb69b8eb012bdb904a9e8eb417055a1ff8794828b23a'

  url "https://download.geany.org/geany-#{version}_osx.dmg"
  appcast 'https://github.com/geany/geany/releases.atom',
          checkpoint: '5067d1c9d10d6630e280e9638cf303ee694f3ce48d233d905109fccefbf934bb'
  name 'Geany'
  homepage 'https://www.geany.org/'

  depends_on macos: '>= :lion'

  app 'Geany.app'
end
