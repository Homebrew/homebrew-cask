cask 'receiptquicklook' do
  version '1.2'
  sha256 '657340f780dd4c8210e82fc7deadd452b4e46dd69ece8c4be3984f52866ad7e1'

  url "https://github.com/letiemble/ReceiptQuickLook/releases/download/v#{version}/ReceiptQuickLook.qlgenerator.zip"
  appcast 'https://github.com/letiemble/ReceiptQuickLook/releases.atom',
          checkpoint: 'f6348edb52e0f7111cb9ce375de112492a61b6d3c84f1e2010affed7b5ce00bf'
  name 'ReceiptQuickLook'
  homepage 'https://github.com/letiemble/ReceiptQuickLook'

  qlplugin 'ReceiptQuickLook.qlgenerator'
end
