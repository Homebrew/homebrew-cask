cask "futubull" do
  version "15.22.12108"
  sha256 "92f533fd42c3566d188c9d120982a070119cbc2506f1fca52b6e2258f8e04958"

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

  depends_on macos: ">= :high_sierra"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "富途牛牛.app", target: "Futubull.app"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
  ]
end
