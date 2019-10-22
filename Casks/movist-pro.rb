cask 'movist-pro' do
  version '2.2.9'
  sha256 '0d3f321bdf9270e4dd41f4d88d66b8d95868266ccdc4b21edabab36b0a6afddd'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
