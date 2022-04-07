cask "podolski" do
  version "1.2.3,12092"
  sha256 "79bb539a83fd7b98d5955f7b960799d8ec3106b62812037189df8bf4093eb228"

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
    "com.u-he.Podolski.aax",
    "com.u-he.Podolski.au",
    "com.u-he.Podolski.data.pkg",
    "com.u-he.Podolski.documentation.pkg",
    "com.u-he.Podolski.nks.pkg",
    "com.u-he.Podolski.presets.pkg",
    "com.u-he.Podolski.tuningFiles.pkg",
    "com.u-he.Podolski.vst",
    "com.u-he.Podolski.vst3",
  ]

  caveats do
    reboot
  end
end
