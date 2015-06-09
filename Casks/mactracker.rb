cask :v1 => 'mactracker' do
  version '7.4.4'
  sha256 '7c26962b9e576abd590192da1380685f9205ecd20338b4d9a69dcbdf6ca66bcb'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '4792d02bbece6924e8ddb068327d0814b733475b1f95dddf33bb3cc9ecf0810c'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mactracker.app'
end
