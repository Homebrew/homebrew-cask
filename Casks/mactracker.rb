cask 'mactracker' do
  version '7.7.3'
  sha256 'a78c9f9a335cad8fa224d98e1c8a84e88f0959338f75d462b1c89bfe24713b1f'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '9774703063a34aa2c5298b7154d8e52874abf64af9d763514b2cbf02a645e87c'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
