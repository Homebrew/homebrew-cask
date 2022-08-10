cask "paddle-easydl" do
  version "2.1.1,1464"
  sha256 "1afe1a52eacacbc3f9a347598debffef78fb2cb5091592795df193cfabccf33e"

  url "https://aip-static.cdn.bcebos.com/paddle-desktop/releases/#{version.csv.first}/%E9%A3%9E%E6%A1%A8EasyDL-#{version.csv.first}.#{version.csv.second}.dmg",
      verified: "aip-static.cdn.bcebos.com/paddle-desktop"
  name "飞桨EasyDL"
  desc "Local one-stop model training and deployment platform"
  homepage "https://ai.baidu.com/easydl/paddle"

  livecheck do
    url "https://aip-static.cdn.bcebos.com/paddle-desktop/releases/latest-mac.yml"
    regex(/path:.*?EasyDL[._-]v?(\d+(?:\.\d+)+)[._-](\d{4,})\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"
  depends_on arch: :x86_64

  app "飞桨EasyDL.app"

  zap trash: [
    "~/Library/Application Support/paddle-desktop",
    "~/Library/Logs/paddle-desktop",
    "~/Library/Preferences/com.baidu.paddle.desktop",
  ]
end
