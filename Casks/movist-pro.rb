cask 'movist-pro' do
  version '2.2.4'
  sha256 '6efe1abccda8e659dfe26b5cfcc98f75efd690ab661bb0b925850fdcf80c084d'

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  appcast 'https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml'
  name 'Movist Pro'
  homepage 'https://movistprime.com/'

  app 'Movist Pro.app'
end
