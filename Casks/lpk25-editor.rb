cask 'lpk25-editor' do
  version :latest
  sha256 :no_check

  # rackcdn.com is the official download host per the vendor homepage
  url 'http://6be54c364949b623a3c0-4409a68c214f3a9eeca8d0265e9266c0.r0.cf2.rackcdn.com/453/downloads/lpk25_editor_mac_00.zip'
  name 'LPK25 Editor'
  homepage 'https://www.akaipro.com/index.php/product/lpk25'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LPK25_Editor/LPK25 Editor.app'
end
