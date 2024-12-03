cask "steinberg-library-manager" do
  version "3.2.50.300,99604c6c-120b-397a-822a-80ea66cfb62c"
  sha256 "98dafe423066d9034ffa03262cae666dd6073ce34710ee541391c8461dcd5875"

  url "https://download.steinberg.net/static_content/runtime-components/steinberg-library-manager/#{version.csv.first}-#{version.csv.second}/Steinberg_Library_Manager_mac.dmg"
  name "Steinberg Library Manager"
  desc "Library manager for Steinberg software"
  homepage "https://o.steinberg.net/en/support/content_and_accessories/steinberg_library_manager.html"

  livecheck do
    url "https://r.mb.steinberg.net/rc-slm-mac"
    regex(%r{/v?(\d+(?:\.\d+)+)-([^/]+)/Steinberg_Library_Manager_mac\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

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
