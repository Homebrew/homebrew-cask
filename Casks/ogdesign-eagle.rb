cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,21"
  sha256 arm:   "c5acea3fa03c2ef9277932b9cba9a92dce321f32b8dd425a749bc69c2ce6a53f",
         intel: "c604753adc155806ee44304eadd345805f71bd3c9e0074ccae6f4d22eaacf63e"

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
