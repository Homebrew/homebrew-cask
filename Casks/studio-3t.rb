cask 'studio-3t' do
  version '2018.4.0'
  sha256 '4daa456dfee0abd994e226011271d2f2dc56527ea97549dff43e75ce3c32c8a6'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
