cask 'mactracker' do
  version '7.5.6'
  sha256 'd09ca4f15a2d610a670111b0e6913ab27bc6a75f174f08cfd8583cedeff174e2'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          checkpoint: '6b79b75ef700dca673faab2ac7df022b7f170012a5c0080793049b909fa1efc0'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
