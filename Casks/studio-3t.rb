cask 'studio-3t' do
  version '2018.4.6'
  sha256 'c57f97bea517843544ea5c7506c7970f4d578882bf89115e3e6047a4df865948'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
