cask 'aerial' do
  version '1.8.0'
  sha256 'bd63871e92e4e173ff0dc450c7410cf651fc370e5bc6bd72613199ffb8c4e5c0'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
