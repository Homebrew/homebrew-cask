cask 'mactracker' do
  version '7.6.3'
  sha256 '08e4c7a5a69a1e9ff57c5d45fc8215d904ed6af4160fbaa082748e6cc7920c17'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '4d2f01e814dc9d07f149ce24f87ded0f0b52cab4e62a8bfabecba8062084227f'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
