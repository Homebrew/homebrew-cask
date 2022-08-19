cask "remarkable" do
  version "2.14.3.623,40828928"
  sha256 "0bad462af1a1abdc4787e13b1c97a7eaa20aadb2465c733bde33dfcb0f03bfe3"

  url "https://updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Prod/#{version.csv.second}/reMarkable-#{version.csv.first}.dmg",
      verified: "updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/"
  name "Remarkable"
  desc "View, Screen Share, organize, import, and download files to a reMarkable device"
  homepage "https://remarkable.com/"

  livecheck do
    url "https://get-updates.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Prod/appcast.xml"
    regex(%r{([^/]+)/reMarkable[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.first}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "reMarkable.app"

  zap trash: [
    "~/Library/Application Support/remarkable",
    "~/Library/Caches/com.remarkable.desktop",
    "~/Library/Caches/remarkable",
    "~/Library/Preferences/com.remarkable.desktop.plist",
    "~/Library/Saved Application State/com.remarkable.desktop.savedState",
  ]
end
