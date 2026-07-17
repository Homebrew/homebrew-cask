cask "eset-cyber-security" do
  version "9.0.6700.0"
  sha256 "c172dcc981bac5b20038b667ff0e775a716b9deb5c09e5222c5f9f5dc900b9c0"

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

  depends_on macos: :big_sur

  pkg "Resources/Installer.pkg"

  uninstall script:  {
              executable: "/Applications/ESET Cyber Security.app/Contents/Helpers/Uninstaller.app/Contents/Scripts/uninstall.sh",
              sudo:       true,
            },
            pkgutil: "com.eset.protection"

  zap trash: "~/Library/Preferences/com.eset.ecs.*.plist"
end
