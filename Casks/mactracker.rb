cask 'mactracker' do
  version '7.6.6'
  sha256 '8fe86a66162fd60d8d7f2f29a7e00affb2050dd46a04efd28a0fb1b24fde8edc'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '87c6e3faa3bad3201d2e5a0bfa003f04f0dc75d421d0514b7698ac6030f27161'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
