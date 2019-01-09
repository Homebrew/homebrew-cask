cask 'studio-3t' do
  version '2018.6.1'
  sha256 '6a6550d1240a80961ad4976e69bc54397ba4249617df64fd89ef05a9f6a23249'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
