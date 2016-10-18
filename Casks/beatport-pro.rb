cask 'beatport-pro' do
  version '2.3.0_169'
  sha256 '94155a9d2075e5c5a7023d13b9e3ec54ce92a4fa460e0e97fbd8df2e1130a888'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          checkpoint: '3692f8ca2ccaab6e7f812ea3c21bc9187575238e73349196e95bcc0be498d65c'
  name 'Beatport Pro'
  homepage 'https://pro.beatport.com/'

  app 'Beatport Pro.app'
end
