cask "remarkable" do
  version "3.7.0.801,52494336,qt6-8dKqjWd9zj"
  sha256 "e44cdd2042d0b28283b46f829d394799e11137950226b282563eb8ee3b6222c2"

  url "https://updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/#{version.csv.second}/reMarkable-#{version.csv.first}.#{version.csv.third}.dmg",
      verified: "updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/"
  name "Remarkable"
  desc "View, Screen Share, organize, import, and download files to a reMarkable device"
  homepage "https://remarkable.com/"

  livecheck do
    url "https://get-updates.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Prod/appcast.xml"
    regex(%r{/reMarkableMacOs/(\d+)/reMarkable[._-]v?(\d+(?:\.\d+)+)\.(.+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.first},#{match.third}" }
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
