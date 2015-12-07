cask :v1 => 'startupizer' do
  version :latest
  sha256 :no_check

  url 'http://gentlebytes.com/content/appcasts/startupizer/latest.php'
  name 'Startupizer'
  name 'Startupizer2'
  homepage 'http://gentlebytes.com/startupizer/'
  license :commercial

  app 'Startupizer2.app'

  zap :delete => [
                  '~/Library/Caches/com.gentlebytes.Startupizer2',
                  '~/Library/Preferences/com.gentlebytes.Startupizer2.plist',
                 ]
end
