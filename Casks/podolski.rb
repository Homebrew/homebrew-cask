cask "podolski" do
  version "1.2.3,12092"
  sha256 "c419d14ead23c5229aeafda0d6f43e9a55f70ac2dc14868d32cef00c58687201"

  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/Podolski_#{version.csv.first.no_dots}_#{version.csv.second}_Mac.zip",
      verified: "uhedownloads-heckmannaudiogmb.netdna-ssl.com/"
  name "Podolski"
  desc "Virtual analogue synthesizer"
  homepage "https://u-he.com/products/podolski/"

  livecheck do
    url "https://u-he.com/products/podolski/releasenotes.html"
    strategy :page_match do |page|
      page.scan(/Podolski\s*v?(\d+(?:\.\d+)+)\s*\(revision\s*(\d+)\)/i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  pkg "Podolski_#{version.csv.second}_Mac/Podolski #{version.csv.first} Installer.pkg"

  uninstall pkgutil: [
    "com.u-he.Podolski.aax.pkg",
    "com.u-he.Podolski.au.pkg",
    "com.u-he.Podolski.data.pkg",
    "com.u-he.Podolski.documentation.pkg",
    "com.u-he.Podolski.nks.pkg",
    "com.u-he.Podolski.presets.pkg",
    "com.u-he.Podolski.tuningFiles.pkg",
    "com.u-he.Podolski.vst.pkg",
    "com.u-he.Podolski.vst3.pkg",
  ]

  caveats do
    reboot
  end
end
