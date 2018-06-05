cask 'filemaker-advanced' do
  version '17.0.1.143'
  sha256 'b4c56c516886949ef20ce2783acde1a4ba3a3d1b17dde4a2409f55fcfd31c44b'

  url "http://fmdl.filemaker.com/TBUB/#{version.major}/fmpa_#{version}.dmg"
  name 'FileMaker Pro Advanced'
  homepage 'http://www.filemaker.com/'

  auto_updates true

  pkg "FileMaker Pro #{version.major} Advanced.pkg"

  uninstall pkgutil: "com.filemaker.FMPA#{version.major}*"
end
