class Avidcodecsle < Cask
  version '2_3_7'
  sha256 '0a3e9b24e1af3ea0e01167a944c08b086a6818eacb38bb637bd0dbe85486323b'

  url "http://resources.avid.com/supportfiles/attach/AvidCodecsLE_#{version.to_s}/Mac/AvidCodecsLE.pkg.zip"
  homepage 'http://www.avid.com/US/industries/workflow/DNxHD-Codec'
  license :commercial

  pkg 'AvidCodecsLE.pkg'
  uninstall :pkgutil => 'com.avid.avidcodecsle' 
end
