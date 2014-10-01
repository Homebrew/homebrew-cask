class Kiwi < Cask
  version '3.1.0'
  sha256 'd01a76d44246237995c85109df089449396d9d82f8b020a71fac5c779600d402'

  url "https://s3.amazonaws.com/Kiwi/Kiwi_#{version}_1492.zip"
  appcast 'http://yourhead.com/appcast/kiwi/appcast.xml'
  homepage 'http://kiwi-app.net/'
  license :unknown

  app 'Kiwi.app'
end
