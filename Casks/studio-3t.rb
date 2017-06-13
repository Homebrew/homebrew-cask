cask 'studio-3t' do
  version '5.3.0'
  sha256 'e171c4675538a9b394511b2637bbd8c21c7357de5f0eb76ce8c6873360e3d3c0'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '6193ba3a3ab0beb36acad2c420963e689db485dd83710440ad9c220c8223cc49'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
