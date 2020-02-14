cask 'studio-3t' do
  version '2020.2.0'
  sha256 'c31a520ce40441a4122ecf56d9344744a5f7579bf9c76514faa9111ec60df2b1'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
