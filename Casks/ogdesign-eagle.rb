cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "2.0,48"

  if Hardware::CPU.intel?
    sha256 "b4a976274392103470cf07fad6db05f93e72c66d197ba7dec4c5ea2d723c96eb"
  else
    sha256 "21243e9d5c448d5849b29e836c2d6f427e45a8e8086b228e815debdef03436c4"
  end

  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.csv.first}-#{arch}#{version.csv.second}.dmg",
      verified: "eagleapp.s3-accelerate.amazonaws.com/"
  name "Eagle"
  desc "Organize all your reference images in one place"
  homepage "https://eagle.cool/macOS"

  livecheck do
    url "https://eagle.cool/check-for-update"
    regex(/Eagle[._-]v?(\d+(?:\.\d+)+)-#{arch}(\d+(?:\.\d+)*)\.dmg/i)
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
