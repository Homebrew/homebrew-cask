cask :v1 => 'sente' do
  version '6.7.6'
  sha256 'b8c6c2ad8b95810fd7107a606a1ce08013bc217b3d2a13a51599ccb3cd29c631'

  url "https://www.thirdstreetsoftware.com/downloads/Sente-#{version}.11672.zip"
  appcast 'http://www.thirdstreetsoftware.com/rss/Sente65.xml?v=6.6.0',
          :sha256 => '2083ee7a01313014c7d600e13018709521fd3f53d767bd31cd8d2caec2120c7f'
  homepage 'http://www.thirdstreetsoftware.com'
  license :unknown

  app 'Sente 6.app'
end
