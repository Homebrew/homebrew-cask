cask 'lyn' do
  version '1.6'
  sha256 '08dc85f2b245c22fab96fa52873a5088084301d08c65b0dec3f2d1e240164198'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: 'ad4e4b4ee65adc7e515ed577d5a76646c7df6a47ec5fd30e46ed09501577e6ca'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
