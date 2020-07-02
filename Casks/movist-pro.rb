cask 'movist-pro' do
  version '2.4.0'
  sha256 'a509523ee909c5e9f33f4dfd63fbf3fd5dbaccd1789d6bcabfa3639878c6cc9b'

  # d2uukrxj8lf22z.cloudfront.net/ was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
