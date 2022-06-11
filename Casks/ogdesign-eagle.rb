cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "3.0,5"

  if Hardware::CPU.intel?
    sha256 "dff7bca95f56e3ac94770df9d2caf8ed01066d39215e218379550a8804353b4e"
  else
    sha256 "1f8670cbec7625e8fb8d34a25e1fa2981489b41986aee877e37856fddaa152ed"
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
