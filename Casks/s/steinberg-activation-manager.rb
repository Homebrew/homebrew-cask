cask "steinberg-activation-manager" do
  version "1.5.1.1191-bf1f40ae-e8d1-3904-b53b-8ad836402100"
  sha256 "d85eb778f2e67f6693beef118167eafb1f4a25b4adefccfa950422fb5bf7952f"

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
