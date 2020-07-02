cask 'aerial' do
  version '1.9.2'
  sha256 '1d21511a31895ece4a18c93c779cbb35a643c5a957a16748cbf4e35a611a27ba'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
