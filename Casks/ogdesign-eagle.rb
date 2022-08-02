cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "" : "M1-"

  version "3.0,7"

  if Hardware::CPU.intel?
    sha256 "9b35d210f1a75efd313053272cb38f19650fdf4c51f940c690407fbc36ddb3ca"
  else
    sha256 "a6e94273cfe3a05b4e559a60a021306d6720c288920014e18d7f75f6daebb351"
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
