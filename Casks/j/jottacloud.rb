cask "jottacloud" do
  version "25.04.28.135128,9a2964b65e21c157fe767e0cd4cb342a94b6c9c679531f330d9ff4fc21c04b96"
  sha256 "9a2964b65e21c157fe767e0cd4cb342a94b6c9c679531f330d9ff4fc21c04b96"

  url "https://sw.jotta.cloud/desktop/download/data/#{version.csv.second}/Jottacloud.dmg",
      verified: "sw.jotta.cloud/"
  name "Jottacloud"
  desc "Client for the Jottacloud cloud storage service"
  homepage "https://jottacloud.com/"

  livecheck do
    url "https://sw.jotta.cloud/desktop/appcast/CUST/release"
    regex(%r{/([^/]+)/Jottacloud(?:\s*Installer)?\.dmg})
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
