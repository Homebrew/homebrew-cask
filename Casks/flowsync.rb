cask "flowsync" do
  version "4.0.6"
  sha256 "e3a2999dd060deb8a30c4d507f0b9ee4298fa10415f1d87bfd6e2bed46afab06"

  url "https://flowsync.flow.polar.com/app/FlowSync_installer-#{version}.pkg"
  name "Polar FlowSync Software"
  desc "Syncing software for Polar Flow products"
  homepage "https://support.polar.com/uk-en/support/flowsync"

  livecheck do
    url "https://flow.polar.com/start"
    strategy :page_match
    regex(%r{href=.*?/FlowSync_installer-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "FlowSync_installer-#{version}.pkg"

  uninstall pkgutil: ["com.polarelectro.pkg.flowsync", "fi.polar.FlowSync", "com.joshuawise.kexts.HoRNDIS"],
            quit:    "fi.polar.Polar-FlowSync"
end
