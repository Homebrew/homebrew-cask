cask 'smart-trash' do
  version '2.0.7'
  sha256 '21ae6bff2f598033d2be4d55f275031d8014455a9267288dbdf538c7ab24de5e'

  url "https://www.hyperbolicsoftware.com/programs/SmartTrash#{version.major}.zip"
  appcast 'https://www.hyperbolicsoftware.com/Receipts/Smart_Trash/SmartTrashUpdate.xml'
  name 'Smart Trash'
  homepage 'https://www.hyperbolicsoftware.com/SmartTrash.html'

  app 'Smart Trash.app'
end
