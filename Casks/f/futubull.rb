cask "futubull" do
  version "15.15.11408"
  sha256 "5a999a9bae2ea6acdd70e686e6607ee87fd99f63face602a166bfc8a80b790c6"

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
