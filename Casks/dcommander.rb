cask 'dcommander' do
  version :latest
  sha256 :no_check

  url 'https://devstorm-apps.com/dc/download.php'
  name 'DCommander'
  homepage 'https://devstorm-apps.com/dc/'

  app 'DCommander.app'

  zap trash: '~/Library/Containers/com.devstorm.dc3'
end
