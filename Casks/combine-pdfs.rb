cask 'combine-pdfs' do
  version '5.3'
  sha256 '9b01818469cf751e08139f9dc7fc5bdeae5e7ce09457737fca247f72fee726b9'

  url "http://www.monkeybreadsoftware.de/Software/CombinePDFs/CombinePDFs#{version.no_dots}.zip"
  appcast 'http://www.monkeybreadsoftware.de/Software/CombinePDFs/appcast.xml',
          checkpoint: '8fa11f3607a78e95b471558dd29d5633e63819f73d3fb53e3ab263331155d93b'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Software/CombinePDFs.shtml'

  app 'Combine PDFs.app'
end
