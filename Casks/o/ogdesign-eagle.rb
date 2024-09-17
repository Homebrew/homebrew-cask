cask "ogdesign-eagle" do
  arch arm: "arm64", intel: "x64"

  version "4.0,3"
  sha256 arm:   "290eee426ab4f8e1c7cafc2ce1203884f3d7dc121f35e1d1801a83779ee1ea67",
         intel: "0a28a717170400f64e47b7ce1ed17ea34a02c91377fca8359e84105923cf2a9a"

  url "https://eaglefile.oss-cn-shenzhen.aliyuncs.com/releases/Eagle-#{version.csv.first}-#{arch}-build#{version.csv.second}.dmg",
      verified: "eaglefile.oss-cn-shenzhen.aliyuncs.com/releases/"
  name "Eagle"
  desc "Organise all your reference images in one place"
  homepage "https://eagle.cool/"

  livecheck do
    url "https://eagle.cool/check-for-update"
    regex(/Eagle[._-]v?(\d+(?:\.\d+)+)-#{arch}[._-]?build(\d+(?:\.\d+)*)\.dmg/i)
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
