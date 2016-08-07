cask 'smart-trash' do
  version '2.0.5'
  sha256 'c3e3dd27985446efb9874ea58818dd9c0d8a5a2f1a20ce0d91c0b30b875e91e6'

  url 'https://www.hyperbolicsoftware.com/programs/SmartTrash2.zip'
  appcast 'https://www.hyperbolicsoftware.com/Receipts/Smart_Trash/SmartTrashUpdate.xml',
          checkpoint: '6699bbe03e16dfc96ed4f6e638ceb74535d47e47fff9912785dbd630d7085927'
  name 'Smart Trash'
  homepage 'https://www.hyperbolicsoftware.com/SmartTrash.html'
  license :commercial

  app 'Smart Trash.app'
end
