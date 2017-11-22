cask 'polymail' do
  version '1.46'
  sha256 '38e1e91bf18df9d3430bdacb15542e5f7e843aff473751ffa6a0bd8d3f7da2cc'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'e6ff8cf1aff7be4d13f80b9ef1d10b4766105174707eb1b633225fae8bf339a8'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
