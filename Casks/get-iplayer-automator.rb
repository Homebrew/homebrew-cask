cask "get-iplayer-automator" do
  version "1.21.11,20210506002"
  sha256 "f5a9a791d2e418dfdac2fb60aa4f2c7445cb79c46930d5c8540c72f6735e5de4"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.b#{version.after_comma}.zip"
  name "Get iPlayer Automator"
  desc "Download and watch BBC and ITV shows"
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
