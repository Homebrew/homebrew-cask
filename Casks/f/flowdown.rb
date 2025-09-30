cask "flowdown" do
  version "3.5.407,3.5.408"
  sha256 "98bfce47992ddfa5582ccd4bd06c4a06490633bdaa837ba57c79650f1e14a909"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version.csv.second || version.csv.first}/FlowDown-V#{version.csv.first}.zip",
      verified: "github.com/Lakr233/FlowDown/"
  name "FlowDown"
  desc "AI agent"
  homepage "https://flowdown.ai/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/FlowDown[._-]V?(\d+(?:\.\d+)+)\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :ventura"

  app "FlowDown.app"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
