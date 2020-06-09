cask 'movist-pro' do
  version '2.2.19'
  sha256 '91d302fc76263e029abd5b808d2ede602357f5f935426424c5971c6cfee25c4e'

  # d2uukrxj8lf22z.cloudfront.net/ was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
