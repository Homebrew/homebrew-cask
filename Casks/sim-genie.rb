cask 'sim-genie' do
  version '2020.3.223'
  sha256 '3955c8cf54e2a5f2952b0a5ae03225bca975a2cca1a4b1a6fb1e9c2d88d61536'

  # d1b3av25dd6jdq.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version}.zip"
  appcast 'https://simgenie.app/releases/macos/appcast.xml'
  name 'Sim Genie'
  homepage 'https://simgenie.app/'

  app 'Sim Genie.app'
end
