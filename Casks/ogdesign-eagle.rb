cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,38"
  sha256 arm:   "9815737ceb97516436141abbcd3e27befaae99ab83ae8d5b816e03c6de8edc98",
         intel: "60fd04f4b523fcbbe3dcb7e812184b837f8a263c75dd47268a20f95c0b18b66d"

  url "https://eaglefile.oss-cn-shenzhen.aliyuncs.com/releases/Eagle-#{version.csv.first}-#{arch}build#{version.csv.second}.dmg",
      verified: "eaglefile.oss-cn-shenzhen.aliyuncs.com/releases/"
  name "Eagle"
  desc "Organize all your reference images in one place"
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
