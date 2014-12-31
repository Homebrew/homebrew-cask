cask :v1 => 'pl2303' do
  version '1.5.1'
  sha256 'b6658605409e9aa63bca7a1ac94c989cc01cdf375f6881ade0ed5bb9694c22cc'

  url "http://prolificusa.com/files/md_PL2303_MacOSX-10_6up_v#{version.gsub('.','_')}.zip"
  homepage 'http://www.prolificusa.com'
  license :closed

  pkg "PL2303_MacOSX_v#{version.gsub('.','_')}.pkg"

  uninstall :delete => [
                        '/System/Library/Extensions/ProlificUsbSerial.kext',
                        '/var/db/receipts/*PL2303*.*',
                        '/var/db/receipts/*ProlificUSbSerial*.*',
                       ]
end
