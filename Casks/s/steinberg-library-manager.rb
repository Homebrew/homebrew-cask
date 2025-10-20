cask "steinberg-library-manager" do
  version "3.2.70.319,9b5846c3-cb34-3434-bc6e-64530f5a1e83"
  sha256 "8fead8984c04c97d61a9dea439cc2302689cd7040ef06876bfc2088cb7b62f5e"

  url "https://download.steinberg.net/static_content/runtime-components/steinberg-library-manager/#{version.csv.first}-#{version.csv.second}/Steinberg_Library_Manager_mac.dmg"
  name "Steinberg Library Manager"
  desc "Library manager for Steinberg software"
  homepage "https://o.steinberg.net/en/support/downloads/steinberg_library_manager.html"

  livecheck do
    url "https://r.mb.steinberg.net/rc-slm-mac"
    regex(%r{/v?(\d+(?:\.\d+)+)-([^/]+)/Steinberg_Library_Manager_mac\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "Library Manager.pkg"

  uninstall launchctl: "com.steinberg.HALionLibraryInstallerHelper",
            quit:      "com.steinberg.HALionLibraryManager",
            pkgutil:   "com.steinberg.SteinbergLibraryManager",
            delete:    "/Applications/Steinberg Library Manager.app"

  zap trash: [
    "/Library/LaunchDaemons/com.steinberg.HALionLibraryInstallerHelper.plist",
    "/Library/PrivilegedHelperTools/com.steinberg.HALionLibraryInstallerHelper",
    "~/Library/Preferences/Steinberg Library Manager",
  ]
end
