cask 'polymail' do
  version '1.17'
  sha256 '9a97fa9fbf5f618f848869251aaee1c55c72fead2aad49ffabbc1df35843c3fc'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'c192a3e748b427c7309524623cec6997f67dc60b4e228d8f7c61dc9f5b4b729f'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
