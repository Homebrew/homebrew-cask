cask 'movist-pro' do
  version '2.2.8'
  sha256 '848f074a8b0157f7ef9a890f57660278693345eef488b2b827d9e61eb5bf2390'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
