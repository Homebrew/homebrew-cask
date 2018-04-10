cask 'studio-3t' do
  version '2018.2.5'
  sha256 '3e84381adef8e207a18a740a87fb8ec26e22dd1ffc97ac83b7d7d6575feb9594'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: 'a7674667e1071c8636d70555d8b27e83bf0b48956b796b78bbb307a847df698f'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
