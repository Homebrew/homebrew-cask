cask "eset-cyber-security" do
  version "10.0.2100.0"
  sha256 "4d46454a097d183f41238d1f9fb15d05bc1e6f4b06261a33d98a32c3e962197f"

  url "https://download.eset.com/com/eset/apps/home/eav/mac/v#{version.major}/#{version}/eset_cybersecurity.dmg"
  name "ESET Cyber Security"
  desc "Security including web and email protection"
  homepage "https://www.eset.com/"

  livecheck do
    url "https://gwc.eset.com/v1/product/49"
    strategy :json do |json|
      json.dig("files", "installer")&.map { |_, item| item["full_version"] }
    end
  end

  depends_on :macos

  pkg "Resources/Installer.pkg"

  uninstall script:  {
              executable: "/Applications/ESET Cyber Security.app/Contents/Helpers/Uninstaller.app/Contents/Scripts/uninstall.sh",
              sudo:       true,
            },
            pkgutil: "com.eset.protection"

  zap trash: "~/Library/Preferences/com.eset.ecs.*.plist"
end
