cask "clamxav" do
  version "3.8,10918"
  sha256 "49f81960914a300dcadd218cf232fdeeb37d76dbd11374d30f6260a8cc4a9ca0"

  url "https://cdn.clamxav.com/ClamXAVdownloads/ClamXAV_#{version.csv.first}_#{version.csv.second}_Installer.pkg"
  name "ClamXAV"
  desc "Anti-virus and malware scanner"
  homepage "https://www.clamxav.com/"

  livecheck do
    url "https://www.clamxav.com/sparkle/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "ClamXAV_#{version.csv.first}_#{version.csv.second}_Installer.pkg"

  postflight do
    # Partial uninstaller used because the full uninstaller removes user preferences
    system_command "/usr/bin/curl",
                   args: [
                     "-L",
                     "https://www.clamxav.com/downloads/StandaloneUninstaller-Partial.pkg",
                     "-o",
                     "#{staged_path}/StandaloneUninstaller-Partial.pkg",
                   ]
  end

  uninstall script:  {
              executable:   "/usr/sbin/installer",
              args:         [
                "-pkg", "#{staged_path}/StandaloneUninstaller-Partial.pkg",
                "-target", "/"
              ],
              must_succeed: false,
              sudo:         true,
            },
            pkgutil: [
              "uk.co.canimaansoftware.clamxav*",
              "uk.co.canimaansoftware.ClamXAV*",
            ]

  zap trash: [
    "/Library/Application Support/ClamXAV",
    "~/Library/Caches/uk.co.canimaansoftware.ClamXAV",
    "~/Library/Caches/uk.co.canimaansoftware.ClamXAV-UI-Helper",
    "~/Library/Caches/uk.co.canimaansoftware.ClamXAV.XAV",
    "~/Library/HTTPStorages/uk.co.canimaansoftware.ClamXAV",
    "~/Library/HTTPStorages/uk.co.canimaansoftware.ClamXAV-UI-Helper",
    "~/Library/HTTPStorages/uk.co.canimaansoftware.ClamXAV.binarycookies",
    "~/Library/HTTPStorages/uk.co.canimaansoftware.ClamXAV.XAV",
    "~/Library/Logs/ClamXAV-Console.log",
    "~/Library/Logs/ClamXAV-UI-Helper-Console.log",
    "~/Library/Preferences/uk.co.canimaansoftware.ClamXAV-UI-Helper.plist",
    "~/Library/Preferences/uk.co.canimaansoftware.ClamXAV.plist",
  ]

  caveats do
    files_in_usr_local
  end
end
