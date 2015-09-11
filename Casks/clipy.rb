cask :v1 => 'clipy' do
  version '1.0.3'
  sha256 '888476b91f7df5a2cef83901f7b426aab17dac4448ada0e60ada9b024751aeee'

  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'http://clipy-app.com/appcast.xml',
          :sha256 => '888476b91f7df5a2cef83901f7b426aab17dac4448ada0e60ada9b024751aeee',
          :format => :sparkle
  name 'Clipy'
  homepage 'http://clipy-app.com/'
  license :mit

  depends_on :macos => '>= :mavericks'

  app 'Clipy.app'
end
