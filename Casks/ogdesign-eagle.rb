cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "2.0,47"

  if Hardware::CPU.intel?
    sha256 "4e5bbc2063e646d7cb99a98fe5d593224cad1f41f251ac7b2ea7ce3006531238"
  else
    sha256 "fe1c05661b5580c7fbb7525829daa003e71649ff064a47dc97daa513ebe4f148"
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
