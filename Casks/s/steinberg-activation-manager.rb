cask "steinberg-activation-manager" do
  version "1.6.0.1253-4d07e086-79f2-3f4f-89d2-ba32bce1477f"
  sha256 "728436d10f6bd4db09a9b42cecc0cde60a401ebe2963e20c41f69bc23b5397cb"

  url "https://download.steinberg.net/static_content/runtime-components/steinberg-activation-manager/#{version}/Steinberg_Activation_Manager_Installer_mac.dmg"
  name "Steinberg Activation Manager"
  desc "Licenses manager for Steinberg Licensing"
  homepage "https://o.steinberg.net/en/support/content_and_accessories/steinberg_activation_manager.html"

  livecheck do
    url "https://r.mb.steinberg.net/rc-sam-mac"
    regex(%r{([^/]+)/Steinberg_Activation_Manager_Installer_mac\.dmg}i)
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  pkg "Steinberg Activation Manager.pkg"

  uninstall quit:    [
              "com.steinberg.SteinbergActivationManager",
              "com.steinberg.SteinbergLicenseEngine",
            ],
            pkgutil: [
              "com.steinberg.activationmanager",
              "com.steinberg.licenseengine",
              "com.steinberg.licenseengineaccess",
              "com.steinberg.silkupdatehelper",
            ],
            delete:  "/Applications/Steinberg Activation Manager.app",
            rmdir:   "/Library/Application Support/Steinberg/Activation Manager"

  zap trash: [
    "~/Library/Application Support/Steinberg/Activation Manager",
    "~/Library/Caches/Steinberg Activation Manager",
    "~/Library/Saved Application State/com.steinberg.SteinbergActivationManager.savedState",
  ]
end
