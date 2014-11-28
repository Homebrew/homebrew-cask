cask :v1 => 'macdown' do
  version '0.3'
  sha256 '3d0b49792525830b44dc912bc4a0d3801ce2d4f6453a1835c681d379b3c63128'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml',
          :sha256 => '08dc82cf014ff77c30b7f93aa7da9c7d46ea73eb32e4c92b626632cf1e621b0f'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'
end
