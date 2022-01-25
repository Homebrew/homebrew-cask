cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "2.0,46"

  if Hardware::CPU.intel?
    sha256 "40d543bdd8230c291a2fbe1e73b30162d2746df0038f4152e54b16ecd788e3d3"
  else
    sha256 "67004ffb71eb0ff095162a0187b35056930e1225cd73e0d6dbbfb3211db9e395"
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
