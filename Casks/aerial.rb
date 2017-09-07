cask 'aerial' do
  version '1.2'
  sha256 '5b128fb10a1e088ece7feafc3e58f923036dc73b1efed0b8ac74df33b3e0daff'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom',
          checkpoint: 'd0bd6cf01ee5c8330fd7e45ca543efa9234db9ffbee041e04f5640462552fa6b'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'
end
