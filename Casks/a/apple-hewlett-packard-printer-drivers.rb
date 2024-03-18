cask "apple-hewlett-packard-printer-drivers" do
  version "5.1.1,2021,071-46903-20211101-0BD2764A-901C-41BA-9573-C17B8FDC4D90"
  sha256 "523836b630431bc39b0170a17099099d6f821ef62ff29e6ec64ebb69b9954133"

  url "https://updates.cdn-apple.com/#{version.csv.second}/macos/#{version.csv.third}/HewlettPackardPrinterDrivers.dmg",
      verified: "updates.cdn-apple.com/"
  name "HP Printer Drivers"
  desc "HP printing and scanning software"
  homepage "https://support.apple.com/kb/DL1888"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      version = page.match(/title:.*?v?(\d+(?:\.\d+)+)\s*Printer\s*Software\s*Update/i)
      metaurl = page.match(%r{href=.*/(\d+)/macos/([\dA-F]+(?:-[\dA-F]+)*)/HewlettPackardPrinterDrivers\.dmg}i)
      next if version.blank? || metaurl.blank?

      "#{version[1]},#{metaurl[1]},#{metaurl[2]}"
    end
  end

  pkg "HewlettPackardPrinterDrivers.pkg"

  uninstall quit:    [
              "com.hp.aio.faxarchive",
              "com.hp.customer.uploader",
              "com.hp.devicemodel.hpdot4d",
              "com.hp.devicemonitor.*",
              "com.hp.dm.hpdot4d",
              "com.hp.event.status.handler.generic",
              "com.hp.events.*",
              "com.hp.HP-Scanner",
              "com.hp.HP_LaserJet_Professional_Utility",
              "com.hp.HPAiOScan",
              "com.hp.HPAiOTulip",
              "com.hp.hpalerts.plugin.*",
              "com.hp.HPDOT4Scan",
              "com.hp.HPM1210_1130.HP_LaserJet_Professional_Utility",
              "com.hp.HPSOAPScan",
              "com.hp.LEDMScan",
              "com.hp.printerutility.*",
              "com.hp.productresearch.*",
              "com.hp.scan.*",
              "com.hp.scanModule.*",
              "com.hp.ScanService",
            ],
            signal:  ["TERM", "com.hp.printerutility"],
            kext:    "com.hp.kext.io.enabler.compound",
            pkgutil: [
              "com.apple.pkg.HewlettPackardPrinterDrivers",
              "com.apple.pkg.HewlettPackardPrinterDriversPreInstall",
            ],
            delete:  [
              "/Library/Extensions/hp_io_enabler_compound.kext",
              "/Library/Printers/hp/hpio",
            ],
            rmdir:   "/Library/Printers/hp"

  zap trash: [
        "~/Library/Application Support/HP/Product Improvement Study",
        "~/Library/Logs/hp/HP Product Research.log",
        "~/Library/Preferences/com.hp.HP-Scanner.plist",
        "~/Library/Preferences/com.hp.printerutility.plist",
        "~/Library/Preferences/com.hp.scanModule.plist",
        "~/Library/Preferences/com.hp.scanModule3.plist",
        "~/Library/Saved Application State/com.hp.printerutility.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/HP",
        "~/Library/Logs/hp",
      ]

  caveats do
    reboot
  end
end
