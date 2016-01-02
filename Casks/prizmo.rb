cask 'prizmo' do
  version '3.1.5'
  sha256 'f81bbfd40004671c3e573a12679833d188349407da544b29e8357d8b31cae74c'

  url "http://www.creaceed.com/downloads/prizmo#{version.to_i}_#{version}.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          :sha256 => '879492687d7a7bc8bd4ab31c8853c8ccd5b47b3cf9d351a4ec7e4c95ab7b1834'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end
