cask 'aerial' do
  version '1.4.5'
  sha256 '4bd9d1e0f1dba0cfc6897bdcd4f15c7a0fdcad16694153dab9cf1768672d45b3'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
