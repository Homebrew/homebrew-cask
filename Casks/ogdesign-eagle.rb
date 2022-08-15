cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,9"

  on_intel do
    sha256 "22f741b6951d153483b86be328e5f2f5bf101175097c650e7f59a7be619ac076"
  end
  on_arm do
    sha256 "42024f78248291446ec511b140bc72acc7f46c47e5df39f3d4e0179d9eede822"
  end

  url "https://r2-app.eagle.cool/releases/Eagle-#{version.csv.first}-#{arch}build#{version.csv.second}.dmg"
  name "Eagle"
  desc "Organize all your reference images in one place"
  homepage "https://eagle.cool/macOS"

  livecheck do
    url "https://eagle.cool/check-for-update"
    regex(/Eagle[._-]v?(\d+(?:\.\d+)+)-#{arch}build(\d+(?:\.\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Eagle.app"

  zap trash: [
    "~/Library/Application Support/Eagle",
    "~/Library/Logs/Eagle",
    "~/Library/Preferences/tw.ogdesign.eagle.plist",
    "~/Library/Saved Application State/tw.ogdesign.eagle.savedState",
  ]
end
