cask 'aerial' do
  version '1.6.2'
  sha256 '7e7f938cd1aa4e1d40ed24938f34b88d694b1487424e74775a766c248658eff9'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
