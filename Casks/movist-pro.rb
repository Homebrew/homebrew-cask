cask 'movist-pro' do
  version '2.2.18'
  sha256 '1e836a7555eb8dbccbb589bf5c0ab534d81f8a166efca607b7112b68e2f6ac50'

  # d2uukrxj8lf22z.cloudfront.net/ was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
