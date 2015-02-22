cask :v1 => 'coteditor' do
  version '2.1.0'
  sha256 '4d2f31697d8bb621cec3284d0a40601433deaff9733aa0010d93e9eb122660d3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.com/appcast.xml',
          :sha256 => '4abe532801c9944267d5e6f6279604d0c202cc93b10065f4ad714f9c4cb47cef'
  name 'CotEditor'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
