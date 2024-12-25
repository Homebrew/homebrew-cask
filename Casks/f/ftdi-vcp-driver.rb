cask "ftdi-vcp-driver" do
  on_mojave :or_older do
    version "2.4.4"
    sha256 "f3343fc223f667e1dab0ecf9fd8fade525c261f120a1cd6b29f8806fa6bc4d8b"

    url "https://www.ftdichip.com/Drivers/VCP/MacOSX/FTDIUSBSerialDriver_v#{version.dots_to_underscores}.dmg"

    livecheck do
      skip "Legacy version"
    end

    pkg "FTDIUSBSerial.pkg"

    uninstall kext:    "com.FTDI.driver.FTDIUSBSerialDriver",
              pkgutil: [
                "com.FTDI.driver.FTDIUSBSerialDriver",
                "com.FTDI.ftdiusbserialdriverinstaller.*",
              ],
              delete:  "/Library/Extensions/FTDIUSBSerialDriver.kext"

    caveats do
      reboot

      <<~EOS
        If you don't want to reboot, you can load the driver using the following
        command:
          sudo /sbin/kextload -b com.FTDI.driver.FTDIUSBSerialDriver

        Once you've rebooted or loaded the driver, you can (re)connect your FTDI
        device and it will show up in /dev, usually like this:

          /dev/tty.usbserial-XXXXXXXX

        where XXXXXXXX is a random ID, based on the serial number.
      EOS
    end
  end
  on_catalina :or_newer do
    version "1.5.0,2022,06"
    sha256 "f535d604d5098c4ecde0f213a80732cd45906339472ae30c0723959336a50b9c"

    url "https://ftdichip.com/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/FTDIUSBSerialDextInstaller_#{version.csv.first.dots_to_underscores}.dmg"

    livecheck do
      url "https://ftdichip.com/drivers/vcp-drivers/"
      regex(%r{href=.*?/(\d+)/(\d+)/FTDIUSBSerialDextInstaller[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[2].tr("_", ".")},#{match[0]},#{match[1]}" }
      end
    end

    # App must be installed in `/Applications`.
    app "FTDIUSBSerialDextInstaller_#{version.csv.first.dots_to_underscores}.app",
        target: "/Applications/FTDIUSBSerialDextInstaller.app"
    installer manual: "/Applications/FTDIUSBSerialDextInstaller.app"

    # `systemextensionsctl` currently only works when SIP is disabled and there
    # doesn't seem to be any other way to uninstall a driver extension.
    # uninstall script: {
    #             executable: "systemextensionsctl",
    #             args:       ["uninstall", "-", "com.ftdi.vcp.dext"],
    #           }

    uninstall delete: [
      "~/Library/Application Scripts/com.ftdi.vcp.dext",
      "~/Library/Containers/com.ftdi.vcp.dext",
    ]

    caveats do
      reboot

      <<~EOS
        Once you've rebooted, you can (re)connect your FTDI
        device and it will show up in /dev, usually like this:

          /dev/tty.usbserial-XXXXXXXX

        where XXXXXXXX is a random ID, based on the serial number.

        To uninstall the driver, you must use the GUI to move the
        application from /Applications/FTDIUSBSerialDextInstaller.app to Trash,
        otherwise the system extension will not be removed.
      EOS
    end
  end

  name "FTDI VCP Driver"
  desc "Virtual COM port driver"
  homepage "https://www.ftdichip.com/Drivers/VCP.htm"
end
