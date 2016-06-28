cask 'prizmo' do
  version '3.1.10'
  sha256 '93da2c61ab29594679b9b4a868eb69fa18bf36c9b199c92520533a7cda29bb61'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          checkpoint: 'a09aee3a24e9e9b7674f6730792c3fdeafa3a3fe2fb735d64e0562ee37611129'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
