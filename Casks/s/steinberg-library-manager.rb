cask "steinberg-library-manager" do
  version "3.2.80.56,5dc15cbb-8d96-310c-a2c3-0fe444b511dc"
  sha256 "4b82f504ca848912d7d23be30cd37ae1459595d956b68b92446587aa008a8d4f"

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

  depends_on :macos

  pkg "Library Manager.pkg"

  uninstall launchctl: "com.steinberg.HALionLibraryInstallerHelper",
            quit:      "com.steinberg.HALionLibraryManager",
            pkgutil:   [
              "com.steinberg.HALionLibraryManager",
              "com.steinberg.SteinbergLibraryManager",
            ],
            delete:    "/Applications/Steinberg Library Manager.app"

  zap trash: [
    "/Library/LaunchDaemons/com.steinberg.HALionLibraryInstallerHelper.plist",
    "/Library/PrivilegedHelperTools/com.steinberg.HALionLibraryInstallerHelper",
    "~/Library/Preferences/Steinberg Library Manager",
  ]
end
