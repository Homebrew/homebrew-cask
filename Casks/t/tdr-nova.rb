cask "tdr-nova" do
  version "2.1.6"
  sha256 "97baf64955b46c5729c11abf4651910343e9b2aba658f54946fa2d0c574eb4e7"

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
