cask "asix-ax88179" do
  version "2.5.0,1951"
  sha256 "616fc388b5a10462f9aa5b1780fb86bc7230a40431da4a287cffd5fbcacc47b0"

  url "https://www.asix.com.tw/en/support/download/file/#{version.csv.second}"
  name "AX88179"
  desc "USB 3.0 to gigabit ethernet drivers for ASIX Electronics devices"
  homepage "https://www.asix.com.tw/en/support/download"

  livecheck do
    url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
    regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*12.*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
    strategy :page_match do |page, regex|
      page.split(/class=['"]?list__item['"]?/).map do |list_item|
        list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end.flatten
    end
  end

  depends_on macos: ">= :monterey"
  container nested: "ASIX_USB_Device_Installer_v#{version.csv.first}.dmg"

  pkg "ASIX_USB_Device_Installer_v#{version.csv.first}.pkg"

  preflight do
    staged_path.glob("ASIX_USB_Device_Un*.pkg").first.rename(staged_path/"AX88179_178A_Uninstall.pkg")
  end

  uninstall early_script: {
              executable:   "/usr/sbin/installer",
              args:         ["-pkg", "#{staged_path}/AX88179_178A_Uninstall.pkg", "-target", "/"],
              sudo:         true,
              must_succeed: false,
            },
            pkgutil:      [
              "com.asix.ax88179.uninstall",
              "com.asix.pkg.ASIXUSBDeviceAppInstaller*",
              "com.mygreatcompany.pkg.ASIXUSBDeviceAPPUninstall",
              "com.mygreatcompany.pkg.AX88179178A",
              "com.mygreatcompany.pkg.AX88179A772DDEXTAPPUninistaller",
            ]

  caveats do
    reboot
  end
end
