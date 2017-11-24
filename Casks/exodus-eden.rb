cask 'exodus-eden' do
  version '1.38.2'
  sha256 'ddea4d83ed1a418ccde40d28dc5e3b29b909e0ca627479c563b142adad4fd0cc'

  # exodusbin.azureedge.net/releases/exodus-eden-macos was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-eden-macos-#{version}.dmg"
  name 'Exodus Eden'
  homepage 'https://www.exodus.io/eden/'

  app 'ExodusEden.app'
end
