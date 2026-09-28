cask "steinberg-activation-manager" do
  version "1.10.0.1489-68f77abf-a4d9-36cb-8be3-b50f96446ef9"
  sha256 "7836faf2d04d5ac20a9ef86318dd059d82a599feeceae4a8d1bdea99a6073653"

  url "https://download.steinberg.net/static_content/runtime-components/steinberg-activation-manager/#{version}/Steinberg_Activation_Manager_Installer_mac.dmg"
  name "Steinberg Activation Manager"
  desc "Licenses manager for Steinberg Licensing"
  homepage "https://o.steinberg.net/en/support/content_and_accessories/steinberg_activation_manager.html"

  livecheck do
    url "https://r.mb.steinberg.net/rc-sam-mac"
    regex(%r{([^/]+)/Steinberg_Activation_Manager_Installer_mac\.dmg}i)
    strategy :header_match
  end

  depends_on :macos

  pkg "Steinberg Activation Manager.pkg"

  uninstall quit:    [
              "com.steinberg.SteinbergActivationManager",
              "com.steinberg.SteinbergLicenseEngine",
            ],
            pkgutil: [
              "com.steinberg.activationmanager",
              "com.steinberg.licenseengine",
              "com.steinberg.licenseengine-app",
              "com.steinberg.licenseengineaccess",
              "com.steinberg.silkupdatehelper",
              "com.steinberg.steinbergruntimeaccess",
            ],
            delete:  "/Applications/Steinberg Activation Manager.app",
            rmdir:   "/Library/Application Support/Steinberg/Activation Manager"

  zap trash: [
    "~/Library/Application Support/Steinberg/Activation Manager",
    "~/Library/Caches/Steinberg Activation Manager",
    "~/Library/Saved Application State/com.steinberg.SteinbergActivationManager.savedState",
  ]
end
