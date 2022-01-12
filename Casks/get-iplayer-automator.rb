cask "get-iplayer-automator" do
  version "1.21.12,20210729001"
  sha256 "0aad06d5771c1a9ad251273e2fca8178313079caede9a1b8f4e2ef5897644ed1"

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
