cask 'studio-3t' do
  version '2020.4.0'
  sha256 'bc17df00dcf156a160ab318ccacdf2e0157b89b875ab9b651233889bc0fd5cc2'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
