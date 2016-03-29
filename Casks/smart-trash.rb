cask 'smart-trash' do
  version '2.0.5'
  sha256 'ee1fa4ddfb954b024de02fc84ca8adb316242d0836edf904c0e22120cb7a6021'

  url 'http://www.hyperbolicsoftware.com/programs/SmartTrash2.zip'
  name 'Smart Trash'
  homepage 'http://www.hyperbolicsoftware.com/SmartTrash.html'
  license :commercial

  container nested: 'SmartTrash2.dmg'

  app 'Smart Trash.app'
end
