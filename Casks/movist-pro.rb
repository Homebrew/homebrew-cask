cask 'movist-pro' do
  version '2.2.7'
  sha256 '938ac6ec60f1baeb89e0b1b5bf910b65003f441f382355a3e62b5b0351dcaae7'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
