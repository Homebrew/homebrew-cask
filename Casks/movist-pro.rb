cask 'movist-pro' do
  version '2.2.12'
  sha256 'a35b80a2ec752a324230b18aaf117b539dc1ecd67301a4dca8cc26c77dd47b27'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
