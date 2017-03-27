cask 'base' do
  version '2.4.12'
  sha256 '6b9ab469a04c647156d972109ff80dbb9c60d484654284e1c8f0319b7bbcced3'

  url "https://files.menial.co.uk/base/base_#{version}.zip"
  appcast 'https://update.menial.co.uk/software/base/',
          checkpoint: '13dec5059cd301d7d1b87d4c780ebd2c4c9a707895064d1f55852ee3592fdeb9'
  name 'Menial Base'
  homepage 'https://menial.co.uk/base/'

  app 'Base.app'
end
