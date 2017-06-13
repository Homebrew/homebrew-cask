cask 'clipy' do
  version '1.1.3'
  sha256 '688c137eab7a625e3582ccc23e9372740e505e1834f0598e21ebfad15ab130f8'

  # github.com/Clipy/Clipy was verified as official when first introduced to the cask
  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://clipy-app.com/appcast.xml',
          checkpoint: 'c5ae56a12075d8473a0c69f4d7adec5ce3a8caf9678a7f1b3f8b9297ed2ec7d8'
  name 'Clipy'
  homepage 'https://clipy-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Clipy.app'
end
