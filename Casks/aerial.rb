cask 'aerial' do
  version '1.8.1'
  sha256 '3c44a2ae388aa99196a5ba7fc24c1cedd1f12f8772c537c839647962d728deee'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
