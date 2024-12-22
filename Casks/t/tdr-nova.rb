cask "tdr-nova" do
  version "2.2.0"
  sha256 "d2aae3690b65261d6792c2c3f7f8f3f33b4e28004b57c9cf1615e0fa8fa922de"

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
