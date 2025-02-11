cask "clamxav" do
  version "3.8.1,11003"
  sha256 "2f740cae8564dd1e3c77558564071d2a4b5f49507d26f7da85269e3367b2f274"

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
  binary "#{appdir}/ClamXAV.app/Contents/MacOS/XAV"

  uninstall launchctl: [
              "uk.co.canimaansoftware.ClamXAV.Engine",
              "uk.co.canimaansoftware.ClamXAV.HelperTool",
              "uk.co.canimaansoftware.ClamXAV.HelperToolUpdater",
              "uk.co.canimaansoftware.ClamXAV.Satellite",
              "uk.co.canimaansoftware.ClamXAV.UI-Helper",
              "uk.co.canimaansoftware.ClamXAV.UninstallWatcher",
              "uk.co.canimaansoftware.ClamXavHelper",
              "uk.co.canimaansoftware.ClamXavHelperUpdater",
            ],
            quit:      "uk.co.canimaansoftware.ClamXAV",
            pkgutil:   [
              "uk.co.canimaansoftware.clamxav*",
              "uk.co.canimaansoftware.ClamXAV*",
            ],
            delete:    [
              "/Applications/ClamXAV.app",
              "/Library/PrivilegedHelperTools/uk.co.canimaansoftware.ClamX*",
              "/usr/local/clamXav",
              "/usr/local/ClamXAV3",
            ]

  zap trash: [
    "/Library/Application Support/ClamXAV",
    "~/Library/Caches/uk.co.canimaansoftware.ClamXAV*",
    "~/Library/HTTPStorages/uk.co.canimaansoftware.ClamXAV*",
    "~/Library/Logs/ClamXAV*-Console.log",
    "~/Library/Preferences/uk.co.canimaansoftware.ClamXAV*.plist",
  ]

  caveats do
    files_in_usr_local
  end
end
