cask 'aerial' do
  version '1.6.0'
  sha256 'b51e79b1acf51168fb9c4ce3fd5f208f4c0974c16c191ab9908afbe77331423d'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.saver.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'

  zap trash: '~/Library/Caches/Aerial'
end
