cask "steinberg-library-manager" do
  version "3.2.71.322,99cc8104-3f95-35d5-b360-e0d5133ce331"
  sha256 "8236698c1c0e7daa03c4711635d500359fc9276f8b4ddb4e44b4a1b3c89942bf"

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
