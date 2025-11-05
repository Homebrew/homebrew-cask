cask "jottacloud" do
  version "25.11.04.149375,0f590ffe625ba79771bf6ccffdc9e25884b51a01a38c139edd38537b158d8d30"
  sha256 "0f590ffe625ba79771bf6ccffdc9e25884b51a01a38c139edd38537b158d8d30"

  url "https://sw.jotta.cloud/desktop/download/data/#{version.csv.second}/Jottacloud.dmg",
      verified: "sw.jotta.cloud/"
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
