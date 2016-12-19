cask 'aerial' do
  version '1.2'
  sha256 '5b128fb10a1e088ece7feafc3e58f923036dc73b1efed0b8ac74df33b3e0daff'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom',
          checkpoint: '1bd34c3e417de6b81d1d876fed873f9fa45d0077dfecfeb8112b9050cd5d0f4b'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'
end
