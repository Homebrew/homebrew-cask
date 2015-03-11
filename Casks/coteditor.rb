cask :v1 => 'coteditor' do
  version '2.1.2'
  sha256 'b23c90224d53f5b599888d289778a66098b56779d0c789eeca3f1e0f95183dc9'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.com/appcast.xml',
          :sha256 => '6707d7d9110e85cd98346efd2ad3507477707136ef5d8df0c309fb042be568f9'
  name 'CotEditor'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
