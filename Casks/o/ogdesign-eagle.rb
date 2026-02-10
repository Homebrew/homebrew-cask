cask "ogdesign-eagle" do
  arch arm: "arm64", intel: "x64"

  version "4.0,18"
  sha256 arm:   "0894dadb05b6e809c71162fc709cf6ba041df695d074e0d59687d8742208d5a9",
         intel: "a26a5f8be20acf5c3e3919b40144e4c9dd154e980e25fad8340d2e47a486c7ae"

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

  app "Eagle.app"

  zap trash: [
    "~/Library/Application Support/Eagle",
    "~/Library/Logs/Eagle",
    "~/Library/Preferences/tw.ogdesign.eagle.plist",
    "~/Library/Saved Application State/tw.ogdesign.eagle.savedState",
  ]
end
