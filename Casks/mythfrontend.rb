cask 'mythfrontend' do
  version '0.28-58'
  sha256 '2e0c4de89d1ab91a86f5d6ea3ec0a60654412e01f54db28c679cc8e30bf62140'

  # sourceforge.net was verified as official when first introduced to the cask
  url 'https://downloads.sourceforge.net/mythtvformacosx/MythFrontend-0.28-intel-10.9-v0.28-52-ge6a60f7.dmg'
  name 'MythFrontend'
  homepage 'https://www.mythtv.org/'

  app 'MythFrontend.app'
end
