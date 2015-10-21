cask :v1 => 'paragon-vmdk-mounter' do
  version '2.4'
  sha256 '4ad07c5724e0389a2ace63817135f57426775e238e3e9e319a7a619f35eaee1c'

  url 'http://dl.paragon-software.com/free/VMDK_MOUNTER_2014.dmg'
  name 'Paragon VMDK Mounter'
  homepage 'http://www.paragon-software.com/home/vd-mounter-mac-free/'
  license :freemium

  pkg 'Paragon VMDK Mounter.pkg'

  uninstall :launchctl => 'com.paragon-software.vdmounter',
            :kext => 'com.paragon-software.kext.VDMounter',
            :pkgutil => 'com.paragon-software.VDMounter.pkg'
end
