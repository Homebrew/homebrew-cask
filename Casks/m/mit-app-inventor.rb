cask "mit-app-inventor" do
  version "3.0rc3"
  sha256 "7c1a5801eef82baac4045a8d6508b2b388d632baf79d4ef26cc150d53d19aa7d"

  url "https://appinventor.mit.edu/dist/MIT_App_Inventor_Setup_#{version}.dmg"
  name "MIT App Inventor"
  desc "Android emulator"
  homepage "https://appinventor.mit.edu/explore/ai2/mac"

  livecheck do
    url :homepage
    regex(/href=.*?aisetup[._-]mac[._-]v?(\d+(?:\.\d+)+(?:rc\d+)?)/i)
  end

  pkg "MITAppInventorSetup.pkg"

  uninstall launchctl: "edu.mit.appinventor.aiStarter",
            pkgutil:   "edu.mit.pkg.AppInventorSetupInstaller"
end
