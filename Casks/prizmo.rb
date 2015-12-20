cask 'prizmo' do
  version '3.1.5'
  sha256 'f81bbfd40004671c3e573a12679833d188349407da544b29e8357d8b31cae74c'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          sha256 => 'bee39edd6664aad47129cb215867aa8eb0b396fcc83f5e31110f98f43f7e15b0'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end
