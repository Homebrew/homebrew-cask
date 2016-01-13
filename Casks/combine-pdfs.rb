cask 'combine-pdfs' do
  version :latest
  sha256 :no_check

  url 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.dmg'
  appcast 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs/appcast.xml',
          :sha256 => '40aa36f411d51741047b8ee7569e23fe3a20191e933ba028f2ef6f9fd02d013a'
  name 'Combine PDFs'
  homepage 'https://www.monkeybreadsoftware.de/Freeware/CombinePDFs.shtml'
  license :commercial

  app 'Combine PDFs.app'
end
