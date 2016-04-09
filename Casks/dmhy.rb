cask 'dmhy' do
  version '1.5.1'
  sha256 '5e431c5f9ce12cddbb50350c9d4d705a17cf040c38bc557337fd646e09c37398'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  appcast 'https://github.com/yaqinking/DMHY/releases.atom',
          checkpoint: 'fefb45e80d368d7035813e55faba631b69e2e36f8879bb676404eeebbfcc9379'
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'
  license :mit

  app 'DMHY.app'
end
