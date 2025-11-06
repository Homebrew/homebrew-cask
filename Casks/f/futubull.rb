cask "futubull" do
  version "15.38.13708"
  sha256 "2e92b17aaa6cecb8d968be92f305218aaaee570900ab2edda443308025a4e7df"

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
