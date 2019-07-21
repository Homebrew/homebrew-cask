cask 'aerial' do
  version '1.5.0'
  sha256 '2e34483c064297f2ce9a619cde7c607c5cf9528d4455f707191e7e43c8064bc6'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
