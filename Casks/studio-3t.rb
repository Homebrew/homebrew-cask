cask 'studio-3t' do
  version '2018.5.0'
  sha256 '1128bbcae134f7f494cd11e14c32ea58d501f51aed0212b7bd9ed26547cd4c76'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
