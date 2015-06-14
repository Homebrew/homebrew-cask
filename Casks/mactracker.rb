cask :v1 => 'mactracker' do
  version '7.4.5'
  sha256 '9c580a0cee515e1d01de8a6295606b76946aa7a558978af7e90cfabfaef89566'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '4792d02bbece6924e8ddb068327d0814b733475b1f95dddf33bb3cc9ecf0810c'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mactracker.app'
end
