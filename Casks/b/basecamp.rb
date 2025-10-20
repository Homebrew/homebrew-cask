cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.4.3"
  sha256 arm:   "21eb55ba6f08e97fdc2400dad2df9d3d2cd360e2580d679b766611b295ef1293",
         intel: "1849fca884eb91006e17c28050122b6319aaadf1cd5380f05e836cc294b6d9c5"

  url "https://basecamp.com/desktop/mac#{arch}/basecamp#{version.major}-#{version.csv.second}.zip"
  name "Basecamp"
  desc "All-In-One Toolkit for Working Remotely"
  homepage "https://basecamp.com/help/#{version}/guides/apps/mac"

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
