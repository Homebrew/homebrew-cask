cask "remarkable" do
  version "2.8.2.170,11141120"
  sha256 "7669f1e8dd1b13fd5305af8a215b17b33b7ff6cc218a218c9992b7dd83223465"

  url "https://eu-central-1.linodeobjects.com/remarkable-#{version.major}/sparkle/reMarkableMacOs/Prod/#{version.after_comma}/reMarkable-#{version.before_comma}.dmg",
      verified: "eu-central-1.linodeobjects.com/"
  name "Remarkable"
  desc "View, Screen Share, organize, import, and download files to a reMarkable device"
  homepage "https://remarkable.com/"

  livecheck do
    url "https://get-updates.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Prod/appcast.xml"
    regex(%r{reMarkableMacOs/Prod/(\d+)/reMarkable-(\d+(?:\.\d+)*)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end
  
  zap trash: [
    "~/Library/Application Support/remarkable",
    "~/Library/Caches/com.remarkable.desktop",
    "~/Library/Caches/remarkable",
    "~/Library/Preferences/com.remarkable.desktop.plist",
    "~/Library/Saved Application State/com.remarkable.desktop.savedState",
  ]

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "reMarkable.app"
end
