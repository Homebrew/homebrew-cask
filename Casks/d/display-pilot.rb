cask "display-pilot" do
  version "1.12.4.0,260707095509"
  sha256 "12c3aa7ff28563aa2f4bb94c949b0dbae2688a933ed1b7ccc3ccf1a129caf125"

  url "https://esupportdownload.benq.com/esupport/VERTICAL%20&%20PROFESSIONAL%20DISPLAY/Software/Display%20Pilot%202/Display%20Pilot%202%20for%20Mac_V#{version.csv.first}_Mac_#{version.csv.second}.zip"
  name "Display Pilot 2"
  desc "Display control utility"
  homepage "https://www.benq.com/en-ap/monitor/software/display-pilot-2.html"

  livecheck do
    url "https://www.benq.com/api/esupport-tm/getFiles/en_gb/display%20pilot%202/en_gb,ge_ge",
        referer: "https://www.benq.com/en-ap/support/downloads-faq/products/monitor/display-pilot-2/software-driver.html"
    regex(/Display\s+Pilot\s+\d+(?:\s+for\s+Mac)?[._-]v?(\d+(?:\.\d+)+)(?:[._-]Mac)?[._-](\d+)/i)
    strategy :json do |json, regex|
      json.dig("response", "list", "detail")&.filter_map do |item|
        next unless item["OS"]&.include?("Mac")
        next if item["Description"].match?(/Release\s+Note/i)

        match = item["Download"]&.match(regex)
        next unless match

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: :big_sur

  app "Display Pilot 2.app"

  zap trash: "~/Library/Preferences/com.benq.DisplayPilot2.plist"
end
