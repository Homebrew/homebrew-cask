cask "jottacloud" do
  version "26.11.12.190350,355c63fc36ac78ac9c436880c1f3e18f22e916342593dbd2fd9750d103533e91"
  sha256 "355c63fc36ac78ac9c436880c1f3e18f22e916342593dbd2fd9750d103533e91"

  url "https://sw.jotta.cloud/desktop/download/data/#{version.csv.second}/Jottacloud.dmg"
  name "Jottacloud"
  desc "Client for the Jottacloud cloud storage service"
  homepage "https://jottacloud.com/"

  livecheck do
    url "https://sw.jotta.cloud/desktop/appcast/CUST/release"
    regex(%r{/([^/]+)/Jottacloud(?:\s*Installer)?\.dmg}i)
    strategy :sparkle do |item, regex|
      id = item.url[regex, 1]
      next if id.blank?

      "#{item.short_version},#{id}"
    end
  end

  auto_updates true
  depends_on :macos

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
