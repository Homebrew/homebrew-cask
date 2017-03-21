cask 'smart-trash' do
  version '2.0.5'
  sha256 '48097d963556d160ef89d705834089c55e93f7a10e61cd58f1df5a76eca7b5a0'

  url "https://www.hyperbolicsoftware.com/programs/SmartTrash#{version.major}.zip"
  appcast 'https://www.hyperbolicsoftware.com/Receipts/Smart_Trash/SmartTrashUpdate.xml',
          checkpoint: '576fae9e8a4a8455f32c16a5c8b27fd096af83ebd3de038d5e07afbae7154ba0'
  name 'Smart Trash'
  homepage 'https://www.hyperbolicsoftware.com/SmartTrash.html'

  app 'Smart Trash.app'
end
