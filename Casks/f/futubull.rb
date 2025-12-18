cask "futubull" do
  version "15.44.14308"
  sha256 "0826a89a2fa4af5e29f4460bfea1229061592cce9137a87b45aea9f5911355d2"

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
