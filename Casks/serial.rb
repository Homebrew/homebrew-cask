cask 'serial' do
  version '1.3.5'
  sha256 '5c6b7b31d8265a4d592a59af7b2cc96e1f89826a126b1057dc7ab4ae2a8424c1'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/products/serial/release-notes',
          checkpoint: '158ac5ee1d1d4311c623b744e5f9c65116826e49e3259bacd03cee4ee9538ddd'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
