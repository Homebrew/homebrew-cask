cask :v1 => 'combine-pdfs' do
  version :latest
  sha256 :no_check

  url 'http://www.monkeybreadsoftware.de/Freeware/CombinePDFs.dmg'
  name 'Combine PDFs'
  homepage 'http://www.monkeybreadsoftware.de/Freeware/CombinePDFs.shtml'
  license :commercial

  app 'Combine PDFs.app'
end
