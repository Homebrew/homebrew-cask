cask "podolski" do
  version "1.2.2,9724"
  sha256 "36c3e778a3aaa82dcdb18459b9e01ba490884b52cc200941c299362024523994"

  url "https://uhedownloads-heckmannaudiogmb.netdna-ssl.com/releases/Podolski_#{version.before_comma.no_dots}_#{version.after_comma}_Mac.zip",
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

  pkg "Podolski_#{version.after_comma}_Mac/Podolski #{version.before_comma} Installer.pkg"

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
