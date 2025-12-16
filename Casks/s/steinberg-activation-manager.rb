cask "steinberg-activation-manager" do
  version "1.8.1.1383-c7833d7d-e779-371f-8490-077a28b358fe"
  sha256 "fffcaa1f4f8ae1960d6c5ab2112f0083e49726131616ba327d4a2a38b1580350"

  url "https://download.steinberg.net/static_content/runtime-components/steinberg-activation-manager/#{version}/Steinberg_Activation_Manager_Installer_mac.dmg"
  name "Steinberg Activation Manager"
  desc "Licenses manager for Steinberg Licensing"
  homepage "https://o.steinberg.net/en/support/content_and_accessories/steinberg_activation_manager.html"

  livecheck do
    url "https://r.mb.steinberg.net/rc-sam-mac"
    regex(%r{([^/]+)/Steinberg_Activation_Manager_Installer_mac\.dmg}i)
    strategy :header_match
  end

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
