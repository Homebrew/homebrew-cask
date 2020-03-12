cask 'freefilesync' do
  version '10.20'
  sha256 'cfb3614013eadb80d5d12287d49caa9313eabd0dde01f649a707c19be9f2a2bc'

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  pkg "FreeFileSync_#{version}_macOS.pkg"

  uninstall pkgutil: [
                       'org.freefilesync.pkg.FreeFileSync',
                       'org.freefilesync.pkg.RealTimeSync',
                     ]
end
