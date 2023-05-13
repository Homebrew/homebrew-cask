cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,42"
  sha256 arm:   "0e4771935129be604ba2ac485d0ee098539e20cb1ca747da2b3966e6350c4574",
         intel: "7ca28830a5519dcb15c9aeae08e58b87d16af619ab6a3ccafcc3aa5249e12eed"

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
