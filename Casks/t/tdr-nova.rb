cask "tdr-nova" do
  version "2.2.2"
  sha256 "fce66850d17a089c4cebd96076aa98421f12f5eef605d991867f4207bdaf11fa"

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.zip?x24775"
  name "TDR Nova"
  desc "Parallel dynamic equaliser"
  homepage "https://www.tokyodawn.net/tdr-nova/"

  livecheck do
    url :homepage
    regex(%r{latest\sversion:\s<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  pkg "TDR Nova.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRNova.AAX",
    "com.TokyoDawnLabs.TDRNova.AU",
    "com.TokyoDawnLabs.TDRNova.VST",
    "com.TokyoDawnLabs.TDRNova.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Nova.conf"
end
