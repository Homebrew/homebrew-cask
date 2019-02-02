cask 'pdfwordcounter' do
  version '2.0'
  sha256 '9792fca7a2cccf9a252a2f6c82b2fe5509a5f4d9b4ac000df8c198b92931a4b5'
  
# github.com/ezgranet/pdfwordcounter was verified as official when first introduced to the cask
  url "https://github.com/ezgranet/pdfwordcounter/releases/download/2.0/pdfwordcounter.zip"
  appcast 'https://github.com/ezgranet/pdfwordcounter/releases.atom'
  name 'pdfwordcounter'
  homepage 'https://github.com/ezgranet/pdfwordcounter'

  app 'pdfwordcounter.app'

end
