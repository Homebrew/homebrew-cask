cask "mpluginmanager" do
  version "02.21"
  sha256 "dd3d2530039c0d57f7906d5e5107f954bc453507da1881454975088ec0f4ee62"

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
  depends_on :macos

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
