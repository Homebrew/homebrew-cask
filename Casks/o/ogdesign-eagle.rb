cask "ogdesign-eagle" do
  arch arm: "arm64", intel: "x64"

  version "4.0,5"
  sha256 arm:   "94932ab5554f04c383ecb6eb94bee24a0388cb9d294ee2e7529503b6f7a192b7",
         intel: "c5a2e2f654e391fc1d0ca0b918cc81a750d84c731225ce67e0e0c4a26ecf5a11"

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
