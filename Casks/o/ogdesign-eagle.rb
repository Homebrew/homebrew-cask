cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,44"
  sha256 arm:   "0388a36a422b3793771cac024824af97fb4af5f646ba2f2c269a04006cc5ddb7",
         intel: "a990231ebf1554d9029531a91868ec6f361c4fd917d30479e0e9ffd17062db5b"

  url "https://eaglefile.oss-cn-shenzhen.aliyuncs.com/releases/Eagle-#{version.csv.first}-#{arch}build#{version.csv.second}.dmg",
      verified: "eaglefile.oss-cn-shenzhen.aliyuncs.com/releases/"
  name "Eagle"
  desc "Organise all your reference images in one place"
  homepage "https://eagle.cool/"

  livecheck do
    url "https://eagle.cool/check-for-update"
    regex(/Eagle[._-]v?(\d+(?:\.\d+)+)-#{arch}build(\d+(?:\.\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Eagle.app"

  zap trash: [
    "~/Library/Application Support/Eagle",
    "~/Library/Logs/Eagle",
    "~/Library/Preferences/tw.ogdesign.eagle.plist",
    "~/Library/Saved Application State/tw.ogdesign.eagle.savedState",
  ]
end
