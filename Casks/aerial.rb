cask 'aerial' do
  version '1.2beta5'
  sha256 '5b128fb10a1e088ece7feafc3e58f923036dc73b1efed0b8ac74df33b3e0daff'

  url "https://github.com/JohnCoates/Aerial/releases/download/v#{version}/Aerial.zip"
  appcast 'https://github.com/JohnCoates/Aerial/releases.atom',
          checkpoint: '05c9cbb19ad4349b46d4aad95ec7e6391dc43dbebc378e2671c050f442058150'
  name 'Aerial Screensaver'
  homepage 'https://github.com/JohnCoates/Aerial'

  screen_saver 'Aerial.saver'
end
