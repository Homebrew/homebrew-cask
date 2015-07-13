cask :v1 => 'prizmo' do
  version '3.1.3'
  sha256 '52154553c4473dcb1613844991e49a62f96d2f9016254ea2577b0d4b5479c933'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          sha256 => 'bee39edd6664aad47129cb215867aa8eb0b396fcc83f5e31110f98f43f7e15b0'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end
