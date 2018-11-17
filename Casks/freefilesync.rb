cask 'freefilesync' do
  version '10.6'
  sha256 '5b94686935da5160228bb1965f2dafd22894e23a1c8a0bef1709f222645c26cd'

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
