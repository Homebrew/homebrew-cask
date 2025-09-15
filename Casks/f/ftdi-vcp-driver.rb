cask "ftdi-vcp-driver" do
  version "1.5.0,2022,06"
  sha256 "f535d604d5098c4ecde0f213a80732cd45906339472ae30c0723959336a50b9c"

  url "https://ftdichip.com/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/FTDIUSBSerialDextInstaller_#{version.csv.first.dots_to_underscores}.dmg"
  name "FTDI VCP Driver"
  desc "Virtual COM port driver"
  homepage "https://www.ftdichip.com/Drivers/VCP.htm"

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
