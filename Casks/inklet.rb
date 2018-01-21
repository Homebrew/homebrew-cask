cask 'inklet' do
  version '2.1.1'
  sha256 '721388d551660f24d875fed7df492abc790b506904c6695cfe29040526a4ed31'

  url "https://tenonedesign.com/apps/inklet/Inklet-#{version}.zip"
  appcast 'https://tenonedesign.com/apps/inklet/profileInfo2.php',
          checkpoint: '3fe9ab58bece96f6f1205ee6a998519c9810e88009f8c2c98e71473b929af840'
  name 'Inklet'
  homepage 'https://tenonedesign.com/inklet.php'

  app 'Inklet.app'
end
