cask 'freefilesync' do
  version '10.10'
  sha256 '1a2e7883ad9e255ef18e1637a93c714b798f39db85a32ae95eef91789a875fc3'

  # download2056.mediafire.com/97r5il51pvag/occuw8pd0p227zr was verified as official when first introduced to the cask
  url "http://download2056.mediafire.com/97r5il51pvag/occuw8pd0p227zr/FreeFileSync_#{version}_macOS.zip",
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
