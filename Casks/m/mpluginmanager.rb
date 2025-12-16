cask "mpluginmanager" do
  version "02.15"
  sha256 "541d06685c530279c2ee71051c3b04c4141a47acac46504e461ab2c404ed57c5"

  url "https://www.meldaproduction.com/downloads/down?name=MPluginManager_#{version.dots_to_underscores}_setupmac.zip&platform=mac&version=#{version}&mirror=bunnycdn&url=https%3A%2F%2Fmeldaproduction.b-cdn.net%2Fdownload%2Fmpluginmanager%2FMPluginManager_#{version.dots_to_underscores}_setupmac.zip&checksum=8a265945c2b263f916e622791cce101372fee1fd"
  name "MPluginManager"
  desc "Installer for MeldaProduction audio plugins"
  homepage "https://www.meldaproduction.com/downloads"

  livecheck do
    url :homepage
    regex(/href=.*?platform=mac.*?version=v?(\d+(?:[._-]\d+)*)/i)
  end

  auto_updates true

  pkg "MPluginManager_#{version.dots_to_underscores}_setupmac.pkg"

  uninstall pkgutil: [
    "com.MeldaProduction.MPluginManager.pkg",
    "com.MeldaProduction.MPluginManagerData.pkg",
  ]

  zap trash: [
    "/Library/Logs/DiagnosticReports/MPluginManager.bin*",
    "/private/var/db/receipts/com.MeldaProduction.MPluginManager*",
    "~/Library/Application Support/MeldaProduction/Downloader",
    "~/Library/Application Support/MeldaProduction/Menu",
    "~/Library/Application Support/MeldaProduction/MPluginManager",
  ]
end
