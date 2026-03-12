cask "futubull" do
  version "16.7.15208"
  sha256 "ed6b2082f4021e7ef1a6bf85c22a067ba0dc5810d12abc7bada28b0366a794b5"

  url "https://softwaredownload.futunn.com/FTNN_desktop_#{version}_Website.dmg",
      user_agent: :fake,
      referer:    "https://www.futunn.com/"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  livecheck do
    url "https://www.futunn.com/download/history?client=11"
    strategy :json do |json|
      json["data"]&.map do |item|
        next if item["is_beta"] == 1

        item["version"]
      end
    end
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "富途牛牛.app", target: "Futubull.app"

  uninstall quit: "cn.futu.niuniu.nx"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.niuniu.nx",
  ]
end
