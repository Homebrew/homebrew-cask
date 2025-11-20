cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.5.0"
  sha256 arm:   "40d49525fc0a0e52ee23db7f06ec762a8f2cf29f8607f3e264ca60b38135c4f5",
         intel: "f5865d8cc8d130a9d8b158b8c9d6159c92bc67a84ca97098d6194c83f310d63c"

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
