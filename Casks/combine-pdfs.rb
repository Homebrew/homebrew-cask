cask 'combine-pdfs' do
  version '5.3'
  sha256 '08b8c42cbd9918592f998b049d376f03c8261de33b5148de35138c4ec41a6b43'

  url 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.dmg'
  appcast 'http://www.monkeybreadsoftware.de/Software/CombinePDFs/appcast.xml',
          checkpoint: 'e2bc5c2f71a5a52d2768a46d4aaed965a913cc957c159f7e0e22e1b8bbcfc2fb'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Software/CombinePDFs.shtml'

  app 'Combine PDFs.app'
end
