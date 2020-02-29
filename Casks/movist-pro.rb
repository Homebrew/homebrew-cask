cask 'movist-pro' do
  version '2.2.15'
  sha256 '1d53d9cc7e8e7bd500a754f3875593e9609ec59693c8bde083bf3ad98988c1ff'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
