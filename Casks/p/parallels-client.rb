cask "parallels-client" do
  version "19.4.3,25221"
  sha256 "c64146077b2c847170650d13f058289441a1e595990e9863c018c41cb4e92fe0"

  url "https://download.parallels.com/ras/v#{version.csv.first.major}/#{version.csv.first.major_minor_patch}.#{version.csv.second}/RasClient-Mac-Notarized-#{version.csv.first.major_minor_patch}-#{version.csv.second}.pkg"
  name "Parallels Client"
  desc "RDP client"
  homepage "https://www.parallels.com/products/ras/features/rdp-client/"

  livecheck do
    url "https://download.parallels.com/website_links/ras/#{version.csv.first.major}/builds-en_US.json"
    regex(/RasClient[._-]Mac[._-]Notarized[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.pkg/i)
    strategy :json do |json, regex|
      client_json = json.find { |item| item.dig("category", "name")&.start_with?("Client") }
      next if client_json.blank?

      mac_client_json = client_json["contents"]&.find { |item| item["subcategory"] == "Mac" }
      next if mac_client_json.blank?

      match = mac_client_json.dig("files", "Mac Client")&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :monterey"

  pkg "RasClient-Mac-Notarized-#{version.csv.first.major_minor_patch}-#{version.csv.second}.pkg"

  uninstall quit:    "com.2X.Client.Mac",
            pkgutil: "com.2X.Client.Mac"

  zap trash: [
    "~/Library/Application Support/com.2X.Client.Mac",
    "~/Library/Containers/com.2X.Client.Mac",
  ]
end
