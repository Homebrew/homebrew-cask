cask "115browser" do
  version "1.0.2.6"
  sha256 "118c0e02876e54198d49e67a030c1afce71d09c5147da1c7e095e1ba48a6eb3e"

  url "https://down.115.com/client/115pc/mac/115pc_#{version}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome?callback=get_version"
    regex(/115pc_(\d+(\.\d+)+).dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "115电脑版.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
