cask 'debt-quencher' do
  version '1.2.3:7847,495929'
  sha256 'c2cdb6161176d7417078bdbdccd88cd4eb553d95b8630c1d2374acdf4bef247e'

  # paddle.s3.amazonaws.com/fulfillment_downloads was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/#{version.after_colon.before_comma}/#{version.after_colon.after_comma}/Debt_Quencher.zip"
  appcast 'http://nothirst.com/feeds/DebtQuencherAppcast.xml'
  name 'Debt Quencher'
  homepage 'http://nothirst.com/debtquencher/'

  depends_on macos: '>= :leopard'

  app 'Debt Quencher.app'
end
