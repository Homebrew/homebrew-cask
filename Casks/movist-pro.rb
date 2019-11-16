cask 'movist-pro' do
  version '2.2.11'
  sha256 'a00fe42122b262b64ceb4d7dc0fd47fa400fd1e75e3b42d6e9d37f62fbfe51a4'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
