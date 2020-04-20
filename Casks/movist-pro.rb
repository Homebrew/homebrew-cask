cask 'movist-pro' do
  version '2.2.17'
  sha256 '3b036d440eb578ffcde0cb20d5ece1b7e4597b23de7f36d530e604e5df01517a'

  # d2uukrxj8lf22z.cloudfront.net/ was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
