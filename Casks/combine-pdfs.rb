cask 'combine-pdfs' do
  version '5.4'
  sha256 '28e7a4852d33add5c84dd1d63d32a8e854245cb65c4b578cecc2164988538bfe'

  url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/CombinePDFs#{version.no_dots}.zip"
  appcast 'https://www.monkeybreadsoftware.de/Software/CombinePDFs/appcast.xml'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Software/CombinePDFs.shtml'

  app 'Combine PDFs.app'
end
