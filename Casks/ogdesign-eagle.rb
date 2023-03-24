cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,39"
  sha256 arm:   "cca188f3717c204a09f63b1b1adc8fc7265b49bc0b248ba2f459d669dd179764",
         intel: "b7abb483c2815403c2ef27756533ff0e64f4deddb097ead1f15153130d711cf8"

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
