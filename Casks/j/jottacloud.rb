cask "jottacloud" do
  version "25.03.12.131494,47b472d04caf1425b27e26b60ba3407e3b0934c0ee9a394c57415dbfec5feaa1"
  sha256 "47b472d04caf1425b27e26b60ba3407e3b0934c0ee9a394c57415dbfec5feaa1"

  url "https://sw.jotta.cloud/desktop/download/data/#{version.csv.second}/Jottacloud%20Installer.dmg",
      verified: "sw.jotta.cloud/"
  name "Jottacloud"
  desc "Client for the Jottacloud cloud storage service"
  homepage "https://jottacloud.com/"

  livecheck do
    url "https://sw.jotta.cloud/desktop/appcast/CUST/release"
    regex(%r{/([^/]+)/Jottacloud\sInstaller\.dmg})
    strategy :sparkle do |item, regex|
      id = item.url[regex, 1]
      next if id.blank?

      "#{item.short_version},#{id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Jottacloud.app"

  zap trash: [
    "~/Jottacloud",
    "~/Library/Application Scripts/no.jotta.Jottacloud.JottaFinderExtension",
    "~/Library/Application Support/Jottacloud",
    "~/Library/Caches/no.jotta.Jottacloud",
    "~/Library/Containers/no.jotta.Jottacloud.JottaFinderExtension",
    "~/Library/HTTPStorages/no.jotta.Jottacloud",
    "~/Library/Logs/Jottacloud.log",
    "~/Library/Preferences/no.jotta.Jottacloud.plist",
  ]
end
