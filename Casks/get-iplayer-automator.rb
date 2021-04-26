cask "get-iplayer-automator" do
  version "1.21.9,20210423001"
  sha256 "dfe76e596d295dbe3da302f3b7e3ccd7e0a1cab77adfcfaa0e465e4296dd3fd9"

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
