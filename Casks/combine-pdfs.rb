cask 'combine-pdfs' do
  version '5.3'
  sha256 '9b01818469cf751e08139f9dc7fc5bdeae5e7ce09457737fca247f72fee726b9'

  url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/CombinePDFs#{version.no_dots}.zip"
  appcast 'https://www.monkeybreadsoftware.de/Software/CombinePDFs/appcast.xml'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Software/CombinePDFs.shtml'

  app 'Combine PDFs.app'
end
