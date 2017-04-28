cask 'aerial' do
  version '1.2'
  sha256 '5b128fb10a1e088ece7feafc3e58f923036dc73b1efed0b8ac74df33b3e0daff'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom',
          checkpoint: '01b2509548b55f564577f534fd0e63e1f72acb58c805ee7dd749275404b1804d'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'
end
