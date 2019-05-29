cask 'freefilesync' do
  version '10.11'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake,
      referer:    'https://freefilesync.org/download.php'
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  pkg "FreeFileSync_#{version}_macOS.pkg"

  uninstall pkgutil: [
                       'org.freefilesync.pkg.FreeFileSync',
                       'org.freefilesync.pkg.RealTimeSync',
                     ]
end
