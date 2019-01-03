cask 'freefilesync' do
  version '10.7'
  sha256 '135a3034e7e49fc28cd865f0c8a4bf4ad0fc49509e05de21d4423c478011302b'

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  pkg "FreeFileSync_#{version}_macOS.pkg"

  uninstall pkgutil: [
                       'org.freefilesync.pkg.FreeFileSync',
                       'org.freefilesync.pkg.RealTimeSync',
                     ]
end
