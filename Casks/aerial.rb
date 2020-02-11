cask 'aerial' do
  version '1.7.1'
  sha256 '1d829c8dc19d630fad7f50794bdd09d6d9d508ebd23ad16f3821852cf1fd5f98'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
