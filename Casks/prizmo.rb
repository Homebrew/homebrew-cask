cask :v1 => 'prizmo' do
  version '3.1.4'
  sha256 'be3bad97f4fccaa4a4f90e52c67c6091b9832fe619ec14b17d819a9e9740b4d6'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          sha256 => 'bee39edd6664aad47129cb215867aa8eb0b396fcc83f5e31110f98f43f7e15b0'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end
