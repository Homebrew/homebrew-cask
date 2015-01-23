cask :v1 => 'mactracker' do
  version '7.4.1'
  sha256 '1119401fcc05c4a2a93feff680a83a3a6676ce76d120b4de6c89c1cd0aa4688f'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '4792d02bbece6924e8ddb068327d0814b733475b1f95dddf33bb3cc9ecf0810c'
  homepage 'http://mactracker.ca/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mactracker.app'
end
