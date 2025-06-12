cask "omnissa-horizon-client" do
  version "2503-8.15.0-14236092062,CART26FQ1_MAC_2503"
  sha256 "a3d5169fb8383aff63c0f19628ea889b3be965734556870b3cf9845fb0d3d5c5"

  url "https://download3.omnissa.com/software/#{version.csv.second}/Omnissa-Horizon-Client-#{version.csv.first}.dmg"
  name "Omnissa Horizon Client"
  desc "Virtual machine client"
  homepage "https://www.omnissa.com/"

  livecheck do
    url "https://customerconnect.omnissa.com/channel/public/api/v1.0/products/getRelatedDLGList?locale=en_US&category=desktop_end_user_computing&product=omnissa_horizon_clients&version=8&dlgType=PRODUCT_BINARY"
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

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :big_sur"

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
              "com.ws1.Deem",
              "com.ws1.Deem.InstallerHelper",
              "com.ws1.EndpointTelemetryService",
            ]

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
