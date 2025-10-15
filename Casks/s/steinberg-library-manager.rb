cask "steinberg-library-manager" do
  version "3.2.60.317,04ca22c4-fd0d-3a09-8c57-572827f1dc12"
  sha256 "b1edf51f28840d2f6dbd278c77521905717b68a00e6a22bf77bcfcc64d90dabf"

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
