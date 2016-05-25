cask 'debookee' do
  version '5.1.0'
  sha256 '221a98590a367c3dda96facba62deac6046730324a09978491ff2dd404126afd'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '3034696e3dea16c771e0a95d20ce6dc83991105d0c39c6522576723d6f86abb2'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
