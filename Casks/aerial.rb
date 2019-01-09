cask 'aerial' do
  version '1.4.6'
  sha256 '806d56846d65b5ea26bfc3d1ef98f5e66b9fcde7672e09fc22e04121cab3bb24'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
