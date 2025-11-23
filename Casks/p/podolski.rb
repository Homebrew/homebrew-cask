cask "podolski" do
  version "1.2.3,12092"
  sha256 "1051d7d3af520ff8131ceae85f39ae61f90a187b9dafe7afe8d2cf28cdec868a"

  url "https://dl.u-he.com/releases/Podolski_#{version.csv.first.no_dots}_#{version.csv.second}_Mac.zip"
  name "Podolski"
  desc "Virtual analogue synthesiser"
  homepage "https://u-he.com/products/podolski/"

  livecheck do
    url "https://u-he.com/products/podolski/releasenotes.html"
    regex(/Podolski\s*v?(\d+(?:\.\d+)+)\s*\(revision\s*(\d+)\)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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

  zap trash: [
    "~/Library/Application Support/u-he/com.u-he.Podolski.midiassign.txt",
    "~/Library/Application Support/u-he/com.u-he.Podolski.Preferences.txt",
    "~/Library/Application Support/u-he/Podolski",
  ]

  caveats do
    reboot
  end
end
