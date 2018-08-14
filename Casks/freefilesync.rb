cask 'freefilesync' do
  version '10.3'
  sha256 '81d69b3e1040e40faa9c08b2721596620a05b46ecee06b4258bc09852b121a77'

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
