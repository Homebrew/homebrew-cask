cask "iem-plugin-suite" do
  version "1.14.1"
  sha256 "51dbe21c46b400034f796ae53cc5a31d278ab2dcffe49b37e2f61936b48af54f"

  url "https://users.iem.at/holzmueller/IEM-Audioplugins/IEMPluginSuite/v#{version}/IEMPluginSuite_v#{version}.pkg"
  name "IEM Plug-in Suite"
  desc "Ambisonic audio plug-in suite up to 7th order as VST2, LV2 and Standalones"
  homepage "https://plugins.iem.at/"

  livecheck do
    url "https://plugins.iem.at/download/"
    regex(/href=.*?IEMPluginSuite[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg)/i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "IEMPluginSuite_v#{version}.pkg"

  uninstall pkgutil: [
    "at.iem.pkg.IEMPluginSuiteLV2",
    "at.iem.pkg.IEMPluginSuiteStandalones",
    "at.iem.pkg.IEMPluginSuiteVST",
    "at.iem.pkg.IEMPluginSuiteVST3",
  ]

  zap trash: "~/Library/Application Support/IEMAudioPlugins"
end
