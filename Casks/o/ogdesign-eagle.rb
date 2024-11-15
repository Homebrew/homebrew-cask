cask "ogdesign-eagle" do
  arch arm: "arm64", intel: "x64"

  version "4.0,6"
  sha256 arm:   "0a3708e3e7561e5be87efe3b8d3e7409b58df4fcdd111f919d1f1de3d7d20b2e",
         intel: "1083bd6ba3c9f0396df0a2c2df2cd263b0e3ba147bde14fe241218f3a9b4400e"

  url "https://r2-app.eagle.cool/releases/Eagle-#{version.csv.first}-#{arch}-build#{version.csv.second}.dmg"
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
