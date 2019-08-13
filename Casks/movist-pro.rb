cask 'movist-pro' do
  version '2.2.5'
  sha256 '1a2da91128f62cc6d951f325d718a09476eeb8a17eecde669ee38274776ba227'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
