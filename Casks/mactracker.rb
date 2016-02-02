cask 'mactracker' do
  version '7.5.3'
  sha256 'fb1be99fa6fe4f310a9ceb6bc8f975c8c8f130c25be6cd801dbe5847fc4cf7e2'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          checkpoint: '48c969843ed6db87058db81fb6bdb8013e49afd9238bc6e0618426b6aaa6cb8c'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
