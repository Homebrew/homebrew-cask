cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "" : "M1-"

  version "3.0,8"

  if Hardware::CPU.intel?
    sha256 "bbb33440aa0ac425c25d2ad29f61a479ab7431cc9aa2f170d16a2397cc1bc0c8"
  else
    sha256 "6ceb0f6427731385584e02816123db4125d8a730becd3cd1225f3aee7d9e6c40"
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
