cask "get-iplayer-automator" do
  version "1.20.1,20210103001"
  sha256 "7e18462949e097566ddb642991a1a18029dd97235fe5ed1fc19fef47c0198935"

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
