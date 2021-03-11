cask "get-iplayer-automator" do
  version "1.21.2,20210301001"
  sha256 "8012b57bd5f41661e20ea8908ac1980c3d26f2e36b047be3c0943046b2a188c6"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.b#{version.after_comma}.zip"
  name "Get iPlayer Automator"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  livecheck do
    url "https://github.com/Ascoware/get-iplayer-automator/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Get\.?iPlayer\.?Automator\.?v?(\d+(?:.\d+)*).b(\d+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Get iPlayer Automator.app"
end
