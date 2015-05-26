cask :v1 => 'mactracker' do
  version '7.4.2'
  sha256 'b8798c7fa1f7d8bdc985f0749e64691f9972de53064d387c05bdd031f2826e06'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '4792d02bbece6924e8ddb068327d0814b733475b1f95dddf33bb3cc9ecf0810c'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mactracker.app'
end
