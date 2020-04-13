cask 'gearboy' do
  version '3.0.2'
  sha256 '598f69b65f5ff99352f01328b5106b3bb41d109057854a9490f58c7933a57226'

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearboy/releases.atom'
  name 'Gearboy'
  homepage 'https://github.com/drhelius/Gearboy'

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
