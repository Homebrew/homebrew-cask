cask "anydo" do
  version "4.2.146"
  sha256 "47eb8c444be8558ba9da2b1f7e72425bcfb666a610059a991d57316f8da3fb16"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  livecheck do
    url "https://electron-app.any.do/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Any.do.app"

  zap trash: [
    "~/Library/Application Support/@anydo",
    "~/Library/Preferences/com.anydo.mac.plist",
    "~/Library/Saved Application State/com.anydo.mac.savedState",
  ]
end
