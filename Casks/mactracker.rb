cask 'mactracker' do
  version '7.8.1'
  sha256 '5a41a1eaaa7f44e2abfe2a4636a766cce8c303c67dc2cb2fd017ee0f91a7dd6c'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
