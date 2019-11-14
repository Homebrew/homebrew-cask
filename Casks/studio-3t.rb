cask 'studio-3t' do
  version '2019.7.0'
  sha256 '0ef25d3b22a4ec9f82ef5b1ce02017f749dda348584a7e7cbdb14a564e1cfe95'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
