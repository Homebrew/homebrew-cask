cask 'aerial' do
  version '1.4.8'
  sha256 '8fc34709a49211a85264f73546bf8ec29dc1c1b4efd06e20af0d04eed2988f77'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
