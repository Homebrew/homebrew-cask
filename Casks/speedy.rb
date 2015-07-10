cask :v1 => 'speedy' do
  version :latest
  sha256 :no_check

  url 'http://www.apimac.com/download/Speedy.zip'
  appcast 'http://www.apimac.com/version_checking/speedy_mac.xml',
          :sha256 => '7dddd319b0035c46f79e445d1e91d260a50f46f51963ef494c3f9e5cbe76fe58'
  name 'Speedy'
  homepage 'http://www.apimac.com/mac/speedy/'
  license :commercial

  app 'Speedy.app'
end
