cask 'studio-3t' do
  version '5.7.3'
  sha256 '77757691fa21fbabc6215a227ec5427919ca98eaa5a84aa4ab3c7d0b5e981816'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '8cc9326cbb07cd9843f1b554de7dcefd0a292abe8612b79eadc281a65495f8bc'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
