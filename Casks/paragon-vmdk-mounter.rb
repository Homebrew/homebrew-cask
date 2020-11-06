cask "paragon-vmdk-mounter" do
  version "2.4"
  sha256 "4ad07c5724e0389a2ace63817135f57426775e238e3e9e319a7a619f35eaee1c"

  url "https://dl.paragon-software.com/free/VMDK_MOUNTER_2014.dmg"
  name "Paragon VMDK Mounter"
  desc "Mounts a virtual container by double click"
  homepage "https://www.paragon-software.com/home/vd-mounter-mac-free/"

  pkg "Paragon VMDK Mounter.pkg"

  uninstall launchctl: "com.paragon-software.vdmounter",
            kext:      "com.paragon-software.kext.VDMounter",
            pkgutil:   "com.paragon-software.VDMounter.pkg"

  caveats do
    discontinued
  end
end
