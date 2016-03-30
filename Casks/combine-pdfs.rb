cask 'combine-pdfs' do
  version '5.1'
  sha256 '993f46880b114de2f8f59f6ae1c96fb54370a07fe88bbf0a0db8ad63e2155faf'

  url 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.dmg'
  appcast 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs/appcast.xml',
          checkpoint: '658d11704361dfadb0713024ed208d796d09922e33cb09383ab7b6ace5a392b0'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.shtml'
  license :commercial

  app 'Combine PDFs.app'
end
