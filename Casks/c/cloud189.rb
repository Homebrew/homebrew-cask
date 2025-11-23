cask "cloud189" do
  version "1.1.0"
  sha256 :no_check

  url "https://download.cloud.189.cn/file/downloadFile.action?dlt=4&dt=1&expired=1766930486508&sk=297953828&ufi=61304212366059386&zyc=60&token=cloud3&sig=gfhWf6DndIlD28kChBJM1d48E18%3D"
  name "Cloud189"
  name "天翼云盘"
  desc "Public cloud storage service"
  homepage "https://cloud.189.cn/web/static/download-client/index.html"

  livecheck do
    url "https://cloud.189.cn/api/portal/listClients.action"
    strategy :json do |json|
      json["clientList"]&.map do |item|
        next if item["clientType"] != "TELEMAC"

        item["clientVersion"]
      end
    end
  end

  app "天翼云盘.app"

  uninstall quit: "com.cnki.cnkiexpress"

  zap trash: [
    "~/Library/Application Support/com.21cn.cloud-dist",
    "~/Library/Preferences/21cn.cloud.dist.plist",
  ]

  caveats do
    requires_rosetta
  end
end
