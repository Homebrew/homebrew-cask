cask 'freefilesync' do
  version '10.18'
  sha256 'ca3817c06c49fa24a1803d7bd7e8d31174357c10c651ed58523ab0a9dda3aa1d'

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  pkg "FreeFileSync_#{version}_macOS.pkg"

  uninstall pkgutil: [
                       'org.freefilesync.pkg.FreeFileSync',
                       'org.freefilesync.pkg.RealTimeSync',
                     ]
end
