cask "omnissa-horizon-client" do
  version "2606-8.19.0-32216012208,CART27FQ2_MAC_2606"
  sha256 "decc052f456ba0909724c5e33c78f6fb9cc7d25adfd188af95c2993d46226c3f"

  url "https://download3.omnissa.com/software/#{version.csv.second}/Omnissa-Horizon-Client-#{version.csv.first}.dmg"
  name "Omnissa Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.omnissa.com/"

  livecheck do
    url "https://customerconnect.omnissa.com/channel/public/api/v1.0/products/getRelatedDLGList?locale=en_US&category=virtual_desktop_and_apps&product=omnissa_horizon_clients&version=8&dlgType=PRODUCT_BINARY"
    regex(%r{/([^/]+)/Omnissa[._-]Horizon[._-]Client[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :json do |json, regex|
      mac_json_info = json["dlgEditionsLists"]&.find { |item| item["name"]&.match(/mac/i) }
      next if mac_json_info.blank?

      api_item = mac_json_info["dlgList"]&.first
      next if api_item.blank?

      download_group = api_item["code"]
      product_id = api_item["productId"]
      pid = api_item["releasePackageId"]
      next if download_group.blank? || product_id.blank? || pid.blank?

      url = "https://customerconnect.omnissa.com/channel/public/api/v1.0/dlg/details?locale=en_US&downloadGroup=#{download_group}&productId=#{product_id}&rPId=#{pid}"
      download_item = Homebrew::Livecheck::Strategy.page_content(url)
      next if download_item[:content].blank?

      match = download_item[:content].match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "Omnissa Horizon Client.pkg"

  uninstall launchctl: [
              "com.omnissa.horizon.CDSHelper",
              "com.ws1.deem.MacUIEvents",
              "com.ws1.deemd",
              "com.ws1.ws1etlm",
              "com.ws1.ws1etlmu",
            ],
            quit:      "com.omnissa.horizonapp",
            pkgutil:   [
              "com.omnissa.horizon.client.mac",
              "com.omnissa.html5videoplayer",
              "com.ws1.Deem",
              "com.ws1.Deem.InstallerHelper",
              "com.ws1.EndpointTelemetryService",
            ],
            trash:     "/Applications/Omnissa Horizon Client.app"

  zap trash: [
    "/Library/Application Support/Omnissa",
    "/Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist",
    "/Library/Preferences/com.omnissa.horizon.client.mac.plist",
    "/Library/PrivilegedHelperTools/com.omnissa.horizon.CDSHelper",
    "~/.omnissa",
    "~/Library/Application Support/Omnissa Horizon Client",
    "~/Library/Caches/com.omnissa.horizon.client.mac",
    "~/Library/Logs/Omnissa Horizon Client",
    "~/Library/Logs/Omnissa",
    "~/Library/Preferences/com.omnissa.horizon.client.mac.plist",
    "~/Library/Preferences/com.omnissa.horizon.keyboard.plist",
    "~/Library/Saved Application State/com.omnissa.horizon.client.mac.savedState",
    "~/Library/WebKit/com.omnissa.horizon.client.mac",
  ]
end
