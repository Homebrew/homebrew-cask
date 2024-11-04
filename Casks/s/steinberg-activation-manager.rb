cask "steinberg-activation-manager" do
  version "1.5.2.1205-53b13e48-8075-3a7c-95e3-c1787545bfe7"
  sha256 "8ee23c322609d9efff3fbae5bf429450d0038040c5ecb08e7ddac7553e60cbda"

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
