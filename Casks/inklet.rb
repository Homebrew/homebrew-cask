cask 'inklet' do
  version '2.1.1'
  sha256 '721388d551660f24d875fed7df492abc790b506904c6695cfe29040526a4ed31'

  url "https://tenonedesign.com/apps/inklet/Inklet-#{version}.zip"
  appcast 'https://tenonedesign.com/apps/inklet/profileInfo2.php'
  name 'Inklet'
  homepage 'https://tenonedesign.com/inklet.php'

  app 'Inklet.app'
end
