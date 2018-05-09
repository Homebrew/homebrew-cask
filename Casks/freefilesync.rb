cask 'freefilesync' do
  version '10.0'
  sha256 '1130b8e8fd7db53f0766d6d7b7108000eca721f62e787f03b5450b8207027dc2'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  pkg "FreeFileSync_#{version}_macOS.pkg"

  uninstall pkgutil: [
                       'org.freefilesync.pkg.FreeFileSync',
                       'org.freefilesync.pkg.RealTimeSync',
                     ]
end
