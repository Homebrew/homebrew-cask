cask "get-iplayer-automator" do
  version "1.21.6,20210323002"
  sha256 "734dadfd54d0af8de76659ca5fabce23631f5a624ab22b9925edd5419f46ad6e"

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
