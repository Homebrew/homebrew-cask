cask "asix-ax88179" do
  sha256 :no_check

  on_mojave :or_older do
    version "2.19.0,1242"

    livecheck do
      url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
      regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*10.*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
      strategy :page_match do |page, regex|
        page.split(/class=['"]?list__item['"]?/).map do |list_item|
          list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
        end.flatten
      end
    end

    container nested: "AX88179_178A_macOS_10.9_to_10.15_Driver_Installer_v#{version.csv.first}_20220517/AX88179_178A_v#{version.csv.first}.dmg"

    pkg ".AX88179_178A_10.9_10.14.pkg"
  end
  on_catalina do
    version "2.19.0,1242"

    livecheck do
      url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
      regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*10.*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
      strategy :page_match do |page, regex|
        page.split(/class=['"]?list__item['"]?/).map do |list_item|
          list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
        end.flatten
      end
    end

    container nested: "AX88179_178A_macOS_10.9_to_10.15_Driver_Installer_v#{version.csv.first}_20220517/AX88179_178A_v#{version.csv.first}.dmg"

    pkg ".AX88179_178A_10.15.pkg"
  end
  on_catalina :or_older do
    uninstall_preflight do
      staged_path.glob("AX88179_178A_Uninstall_v*.pkg").first.rename(staged_path/"AX88179_178A_Uninstall.pkg")

      system_command "/usr/sbin/installer",
                     args:         ["-pkg", staged_path/"AX88179_178A_Uninstall.pkg", "-target", "/"],
                     sudo:         true,
                     sudo_as_root: true
    end
  end
  on_big_sur do
    version "1.3.0,1301"

    livecheck do
      url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
      regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*11.*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
      strategy :page_match do |page, regex|
        page.split(/class=['"]?list__item['"]?/).map do |list_item|
          list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
        end.flatten
      end
    end

    container nested: "ASIX_USB_Device_Installer_macOS_11.3_to11.6_Driver_v#{version.csv.first}_20220706/ASIX_USB_Device_Installer_v#{version.csv.first}.dmg"

    pkg "ASIX_USB_Device_Installer_v#{version.csv.first}.pkg"
  end
  on_big_sur :or_newer do
    uninstall_preflight do
      staged_path.glob("ASIX_USB_Device_Un*.pkg").first.rename(staged_path/"AX88179_178A_Uninstall.pkg")

      system_command "/usr/sbin/installer",
                     args:         ["-pkg", staged_path/"AX88179_178A_Uninstall.pkg", "-target", "/"],
                     sudo:         true,
                     sudo_as_root: true
    end
  end
  on_monterey :or_newer do
    version "2.4.0,1867"

    livecheck do
      url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
      regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*12.*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
      strategy :page_match do |page, regex|
        page.split(/class=['"]?list__item['"]?/).map do |list_item|
          list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
        end.flatten
      end
    end

    container nested: "ASIX_USB_Device_Installer_v#{version.csv.first}.dmg"

    pkg "ASIX_USB_Device_Installer_v#{version.csv.first}.pkg"
  end

  url "https://www.asix.com.tw/en/support/download/file/#{version.csv.second}"
  name "AX88179"
  desc "USB 3.0 to gigabit ethernet drivers for ASIX Electronics devices"
  homepage "https://www.asix.com.tw/en/support/download"

  uninstall pkgutil: [
    "com.asix.ax88179.uninstall",
    "com.asix.pkg.ASIXUSBDeviceAppInstaller",
    "com.mygreatcompany.pkg.ASIXUSBDeviceAPPUninstall",
    "com.mygreatcompany.pkg.AX88179178A",
    "com.mygreatcompany.pkg.AX88179A772DDEXTAPPUninistaller",
  ]

  caveats do
    reboot
    requires_rosetta
  end
end
