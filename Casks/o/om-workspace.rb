cask "om-workspace" do
  version "2.4"
  sha256 :no_check

  url "https://download.omsystem.com/api/signed/omworkspacse/OWSetup.dmg?software=OM+Workspace&version=0&serial=000000000"
  name "OM Workspace"
  desc "Photo editor for Olympus cameras"
  homepage "https://software.omsystem.com/omworkspace/"

  livecheck do
    url "https://support.jp.omsystem.com/en/support/imsg/digicamera/download/software/omw/omw_update_mac.html"
    regex(/<div[^>]*>\s*(\d+(?:\.\d+)+)\s*</i)
  end

  depends_on macos: ">= :mojave"

  pkg "OMWorkspace.pkg"

  uninstall quit:    [
              "com.om-digitalsolutions.*",
              "com.omsystem.*",
            ],
            pkgutil: [
              "com.om-digitalsolutions.OMWorkspace.pkg",
              "com.om-digitalsolutions.OWSDoc.pkg",
              "com.om-digitalsolutions.RemoveDSCDriver.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/OMDigitalSolutions/OMWorkspace",
    "~/Library/Caches/com.om-digitalsolutions.OMWorkspace",
    "~/Library/HTTPStorages/com.om-digitalsolutions.OMWorkspace",
    "~/Library/Preferences/com.om-digitalsolutions.OMWorkspace.plist",
  ]
end
