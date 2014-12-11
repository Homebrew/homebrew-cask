cask :v1 => 'kiwi' do
  version '3.1.0'
  sha256 'd01a76d44246237995c85109df089449396d9d82f8b020a71fac5c779600d402'

  url "https://s3.amazonaws.com/Kiwi/Kiwi_#{version}_1492.zip"
  appcast 'http://yourhead.com/appcast/kiwi/appcast.xml',
          :sha256 => '349fab8b17b13487dbe180cf09b3a621a3e1999a1551c105764d7502066490f4'
  homepage 'http://kiwi-app.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'Kiwi.app'
end
