cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.5.1"
  sha256 arm:   "62debd6d6d07c3a32cbeca6748769ddf8b1d17802911f86eb402cec06f611175",
         intel: "2dff1f9a9abb16f1e17e40c83d8fca4381dbdabd8891ac32c04b7cd6717c37a6"

  url "https://basecamp.com/desktop/mac#{arch}/basecamp#{version.major}-#{version.csv.second}.zip",
      verified: "basecamp.com/desktop/"
  name "Basecamp"
  desc "All-In-One Toolkit for Working Remotely"
  homepage "https://3.basecamp-help.com/"

  livecheck do
    url "https://basecamp.com/desktop/mac#{arch}/updates.json"
    regex(/basecamp(\d*)[_-]v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      (match.length > 2) ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Basecamp.app"

  zap trash: [
    "~/Library/Application Support/Basecamp*",
    "~/Library/Preferences/com.basecamp.basecamp*.plist",
    "~/Library/Saved Application State/com.basecamp.basecamp*.savedState",
  ]
end
