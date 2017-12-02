cask 'exodus' do
  version '1.39.5'
  sha256 'ed623b6300e622a63b322b1b0fe54f4a309c20f4d27750913e4f57323afe8528'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '04c979220f4109909893b99e0e276111c71ea52264e8d5be37999e5637cdaace'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
