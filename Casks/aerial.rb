cask 'aerial' do
  version '1.4.4'
  sha256 '565a6d0bfc8f9ada515d645c3a6ad9e620027bdf8794088db6dee93ea72098ff'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
