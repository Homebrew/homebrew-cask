cask :v1 => 'combine-pdfs' do
  version :latest
  sha256 :no_check

  url 'http://www.monkeybreadsoftware.de/Freeware/CombinePDFs.dmg'
  name 'Combine PDFs'
  appcast 'http://www.monkeybreadsoftware.de/Freeware/CombinePDFs/appcast.xml',
          :sha256 => '0cae6e0d6f3dd42f2ed7e51e77047eb6590f8eec3263f9ae8226d65acb453dc6'
  homepage 'http://www.monkeybreadsoftware.de/Freeware/CombinePDFs.shtml'
  license :commercial

  app 'Combine PDFs.app'
end
