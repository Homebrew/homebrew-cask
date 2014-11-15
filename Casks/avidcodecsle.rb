cask :v1 => 'avidcodecsle' do
  version '2.3.7'
  sha256 '0a3e9b24e1af3ea0e01167a944c08b086a6818eacb38bb637bd0dbe85486323b'

  url "http://resources.avid.com/supportfiles/attach/AvidCodecsLE_#{version.gsub('.','_')}/Mac/AvidCodecsLE.pkg.zip"
  homepage 'http://www.avid.com/US/industries/workflow/DNxHD-Codec'
  license :commercial

  pkg 'AvidCodecsLE.pkg'
  uninstall :pkgutil => 'com.avid.avidcodecsle' 
end
