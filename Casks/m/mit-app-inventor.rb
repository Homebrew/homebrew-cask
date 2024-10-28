cask "mit-app-inventor" do
  version "3.0rc3"
  sha256 "7c1a5801eef82baac4045a8d6508b2b388d632baf79d4ef26cc150d53d19aa7d"

  url "https://appinv.us/aisetup_mac_#{version}",
      verified: "appinv.us/"
  name "MIT App Inventor"
  desc "Android emulator"
  homepage "https://appinventor.mit.edu/explore/ai2/mac"

  deprecate! date: "2024-10-27", because: :unmaintained

  depends_on arch: :x86_64

  pkg "MITAppInventorSetup.pkg"

  uninstall launchctl: "edu.mit.appinventor.aiStarter",
            pkgutil:   "edu.mit.pkg.AppInventorSetupInstaller"
end
