cask 'dcommander' do
  version :latest
  sha256 :no_check

  url 'http://devstorm-apps.com/dc/download.php'
  name 'DCommander'
  homepage 'http://devstorm-apps.com/dc/'

  app 'DCommander.app'

  zap delete: '~/Library/Containers/com.devstorm.dc3'
end
