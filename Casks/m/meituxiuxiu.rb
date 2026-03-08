cask "meituxiuxiu" do
  version "2.1.91"
  sha256 :no_check

  url "https://xiuxiupc-dl.meitudata.com/xiuxiumac_setup.dmg",
      user_agent: :fake,
      verified:   "xiuxiupc-dl.meitudata.com/"
  name "meituxiuxiu"
  name "美图秀秀"
  desc "Photo editing and beautification software"
  homepage "https://pc.meitu.com/"

  livecheck do
    url "https://api-xiuxiupro.meitu.com/v2/version/check?client_id=1189857470&version=0.0.0"
    strategy :json do |json|
      json.dig("data", "name")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "美图秀秀.app"

  zap trash: [
    "~/Library/Caches/com.meitu.mtxxpro",
    "~/Library/Preferences/com.meitu.mtxxpro.plist",
  ]
end
