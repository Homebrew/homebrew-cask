cask 'studio-3t' do
  version '5.7.4'
  sha256 '9e161da134860f3822387b53cebc93280f0fb8aa96a9687547accab6d8fe5a36'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: 'ec3e9cf293487231d10099f081612914e76e353b0f450068003a63c2717f5512'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
