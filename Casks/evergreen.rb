cask 'evergreen' do
  version '1.0d42'
  sha256 '952f6f920d9ed94d29e72590a7dafa55a50a56b1c0ce65026ca31db78a2eaabb'

  url "https://ranchero.com/downloads/Evergreen#{version}.zip"
  appcast 'https://ranchero.com/downloads/evergreen-beta.xml',
          checkpoint: '0b1636b5a2d4cb7b8fdac70b09cf39681fb3f2ea259c29280adc05f303fc40ce'
  name 'Evergreen'
  homepage 'https://ranchero.com/evergreen/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Evergreen.app'
end
