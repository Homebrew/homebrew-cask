cask "tdr-nova" do
  version "2.2.3"
  sha256 "85d3b0409260f0211c8fe4fdb0c5ff7e9a2249808a21fe0d21abd1ebc636e12d"

  url "https://www.tokyodawn.net/labs/Nova/#{version}/TDR%20Nova.zip?x24775"
  name "TDR Nova"
  desc "Parallel dynamic equaliser"
  homepage "https://www.tokyodawn.net/tdr-nova/"

  livecheck do
    url :homepage
    regex(%r{latest\sversion:\s<strong>(\d+(?:\.\d+)+)</strong>}i)
  end

  depends_on :macos

  pkg "TDR Nova.pkg"

  uninstall pkgutil: [
    "com.TokyoDawnLabs.TDRNova.AAX",
    "com.TokyoDawnLabs.TDRNova.AU",
    "com.TokyoDawnLabs.TDRNova.VST",
    "com.TokyoDawnLabs.TDRNova.VST3",
  ]

  zap trash: "~/Library/Tokyo Dawn Labs/TDR Nova.conf"
end
