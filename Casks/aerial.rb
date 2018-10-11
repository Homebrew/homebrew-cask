cask 'aerial' do
  version '1.4'
  sha256 'bd22c7bd0e27a410a4263e844658a550a785ef822c9bff45c4332ef8c25e1ab2'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
