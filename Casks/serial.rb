cask 'serial' do
  version '1.3.4'
  sha256 '0567d01acb62db7a1607cf27c47f632c0adbb7942bc0c453287bf1aabd4d4941'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/products/serial/release-notes',
          checkpoint: '76b57f7849454980d4f22452981fe2b514891b7e4e5dbea60af547c020fefb6f'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
