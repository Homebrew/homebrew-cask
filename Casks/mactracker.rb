cask 'mactracker' do
  version '7.6.5'
  sha256 '18cb264dc9a3d9bbdc02d88aca814c0067c0854b2430983c9a54bd8f2b44ce7d'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '54058c7fe90fd6842b24277de8152144c56d5bfc1433b9f3c169198cef6fb566'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
