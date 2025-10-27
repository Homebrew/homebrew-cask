cask "flowdown" do
  version "3.9.440"
  sha256 "e53adccd2fa13ddae1070bd2f632c0a1ced0fefac64564d30d84bdcd75d6409c"

  url "https://github.com/Lakr233/FlowDown/releases/download/#{version.csv.second || version.csv.first}/FlowDown-#{version.csv.first}.zip",
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

  depends_on macos: ">= :sonoma"

  app "FlowDown.app"

  zap trash: [
    "~/Library/Containers/wiki.qaq.flow.FlowDownWidget",
    "~/Library/Containers/wiki.qaq.FlowDown.Community",
  ]
end
