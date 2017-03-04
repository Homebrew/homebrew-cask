cask 'lpk25-editor' do
  version :latest
  sha256 :no_check

  # 6be54c364949b623a3c0-4409a68c214f3a9eeca8d0265e9266c0.r0.cf2.rackcdn.com was verified as official when first introduced to the cask
  url 'http://6be54c364949b623a3c0-4409a68c214f3a9eeca8d0265e9266c0.r0.cf2.rackcdn.com/453/downloads/lpk25_editor_mac_00.zip'
  name 'LPK25 Editor'
  homepage 'https://www.akaipro.com/index.php/product/lpk25'

  app 'LPK25_Editor/LPK25 Editor.app'
end
