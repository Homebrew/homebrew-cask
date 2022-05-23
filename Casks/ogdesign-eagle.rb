cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "2.0,49"

  if Hardware::CPU.intel?
    sha256 "7877426bb4bc1f9d5f7545c142aec57ea9acffc08c357ac601f864b61617907f"
  else
    sha256 "666937aa737edcb8ecbc6b90594c86931b36fc34128c9ac5b751ea6754b1e2b9"
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
