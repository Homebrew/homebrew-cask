cask 'movist-pro' do
  version '2.2.10'
  sha256 '4e29cba5a6bd3cdfdeb3058c840a38ebb2d9c53da4d69c80838a1e1e7f22bd1c'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
