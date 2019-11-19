cask 'studio-3t' do
  version '2019.7.1'
  sha256 '418b720d845045581f5742dcc3224ce23c7d0270461498e7b0e7c23f6c4e8040'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
