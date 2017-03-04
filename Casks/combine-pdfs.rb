cask 'combine-pdfs' do
  version '5.2'
  sha256 'da0defe99295660f26078ac1a9ac5894748451a3854a0a8f0c0c4fdbb3a8ab54'

  url 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.dmg'
  appcast 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs/appcast.xml',
          checkpoint: '658d11704361dfadb0713024ed208d796d09922e33cb09383ab7b6ace5a392b0'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.shtml'

  app 'Combine PDFs.app'
end
