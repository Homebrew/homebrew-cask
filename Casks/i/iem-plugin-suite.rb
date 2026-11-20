cask "iem-plugin-suite" do
  version "1.16.0"
  sha256 "8bec940b407254e6794849b96aa9ce97ca4d085d5545a690eae7d0e4d95d31f2"

  url "https://users.iem.at/holzmueller/IEM-Audioplugins/IEMPluginSuite/v#{version}/IEMPluginSuite_v#{version}.pkg"
  name "IEM Plug-in Suite"
  desc "Ambisonic audio plug-in suite up to 7th order as VST2, LV2 and Standalones"
  homepage "https://plugins.iem.at/"

  livecheck do
    url "https://plugins.iem.at/download/"
    regex(/href=.*?IEMPluginSuite[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)/i)
  end

  auto_updates true
  depends_on :macos

  pkg "IEMPluginSuite_v#{version}.pkg"

  uninstall pkgutil: [
    "at.iem.pkg.IEMPluginSuiteLV2",
    "at.iem.pkg.IEMPluginSuiteStandalones",
    "at.iem.pkg.IEMPluginSuiteVST",
    "at.iem.pkg.IEMPluginSuiteVST3",
  ]

  zap trash: "~/Library/Application Support/IEMAudioPlugins"
end
