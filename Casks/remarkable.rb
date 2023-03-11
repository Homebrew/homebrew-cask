cask "remarkable" do
  version "3.1.0.712,46661632,Staging_9fb83f4b-c3d3-4d4d-83ca-8970001ea9a3"
  sha256 "fc6e475fda44d1c556505f22959292188ac8533cdc46966351760b582ee295d7"

  url "https://updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/#{version.csv.third}/#{version.csv.second}/reMarkable-#{version.csv.first}.dmg",
      verified: "updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/"
  name "Remarkable"
  desc "View, Screen Share, organize, import, and download files to a reMarkable device"
  homepage "https://remarkable.com/"

  livecheck do
    url "https://get-updates.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Prod/appcast.xml"
    regex(%r{([^/]+)/([^/]+)/reMarkable[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.third},#{match.second},#{match.first}" }
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
