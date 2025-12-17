cask "mpluginmanager" do
  version "02.16"
  sha256 "073b8d3037f31957f615d7d2bb63bd4e3bce6902403d2c666a74b8affd940fc0"

  url "https://meldaproduction.b-cdn.net/download/mpluginmanager/MPluginManager_#{version.dots_to_underscores}_setupmac.zip",
      verified: "meldaproduction.b-cdn.net/download/mpluginmanager/"
  name "MPluginManager"
  desc "Installer for MeldaProduction audio plugins"
  homepage "https://www.meldaproduction.com/downloads"

  livecheck do
    url :homepage
    regex(/href=.*?MPluginManager[._-]v?(\d+(?:[._]\d+)+)[._-]setupmac\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  auto_updates true

  pkg "MPluginManager_#{version.dots_to_underscores}_setupmac.pkg"

  uninstall quit:    "com.meldaproduction.MPluginManager",
            pkgutil: [
              "com.MeldaProduction.MPluginManager.pkg",
              "com.MeldaProduction.MPluginManagerData.pkg",
            ],
            delete:  "/Applications/MeldaProduction"

  zap trash: [
    "/Library/Logs/DiagnosticReports/MPluginManager.bin*",
    "~/Library/Application Support/MeldaProduction/Downloader",
    "~/Library/Application Support/MeldaProduction/Menu",
    "~/Library/Application Support/MeldaProduction/MPluginManager",
  ]
end
