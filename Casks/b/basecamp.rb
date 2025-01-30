cask "basecamp" do
  arch arm: "_arm64"

  version "3,2.4.1"
  sha256 arm:   "dbb55dd7de06264a0287cf902af8be95a6b81b47f203ce286673ac69be8c073e",
         intel: "738274118c4ae3a6b9a6b85326519d1f49a6562a31e59dd63dcf8923b0afb321"

  url "https://bc#{version.major}-desktop.s3.amazonaws.com/mac#{arch}/basecamp#{version.major}-#{version.csv.second}.zip",
      verified: "bc3-desktop.s3.amazonaws.com/"
  name "Basecamp"
  desc "All-In-One Toolkit for Working Remotely"
  homepage "https://basecamp.com/help/#{version}/guides/apps/mac"

  livecheck do
    url "https://bc#{version.major}-desktop.s3.amazonaws.com/mac#{arch}/updates.json"
    regex(/basecamp(\d*)[_-]v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      (match.length > 2) ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Basecamp.app"

  zap trash: [
    "~/Library/Application Support/Basecamp*",
    "~/Library/Preferences/com.basecamp.basecamp*.plist",
    "~/Library/Saved Application State/com.basecamp.basecamp*.savedState",
  ]
end
