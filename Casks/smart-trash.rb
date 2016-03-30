cask 'smart-trash' do
  version '2.0.5'
  sha256 'ee1fa4ddfb954b024de02fc84ca8adb316242d0836edf904c0e22120cb7a6021'

  url 'https://www.hyperbolicsoftware.com/programs/SmartTrash2.zip'
  appcast 'https://www.hyperbolicsoftware.com/Receipts/Smart_Trash/SmartTrashUpdate.xml',
          checkpoint: '6699bbe03e16dfc96ed4f6e638ceb74535d47e47fff9912785dbd630d7085927'
  name 'Smart Trash'
  homepage 'https://www.hyperbolicsoftware.com/SmartTrash.html'
  license :commercial

  container nested: 'SmartTrash2.dmg'

  app 'Smart Trash.app'
end
