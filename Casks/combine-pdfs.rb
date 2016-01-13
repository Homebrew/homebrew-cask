cask 'combine-pdfs' do
  version :latest
  sha256 :no_check

  url 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.dmg'
  appcast 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs/appcast.xml',
          :checkpoint => '658d11704361dfadb0713024ed208d796d09922e33cb09383ab7b6ace5a392b0'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.shtml'
  license :commercial

  app 'Combine PDFs.app'
end
