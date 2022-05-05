cask "get-iplayer-automator" do
  version "1.23.0,20220328001"
  sha256 "c6d74a46d06f23a81c3e3ec81870e50ecd6c2dabe8634a4c24d2e43382f47f2e"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.csv.first}/Get.iPlayer.Automator.v#{version.csv.first}.b#{version.csv.second}.zip"
  name "Get iPlayer Automator"
  desc "Download and watch BBC and ITV shows"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  livecheck do
    url "https://github.com/Ascoware/get-iplayer-automator/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Get\.?iPlayer\.?Automator\.?v?(\d+(?:.\d+)*).b(\d+)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Get iPlayer Automator.app"
end
