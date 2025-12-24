cask "ogdesign-eagle" do
  arch arm: "arm64", intel: "x64"

  version "4.0,17"
  sha256 arm:   "0f879258dd030377e01914a6ab3ac38c8684f34f6910f3802d4d432c22397b04",
         intel: "782f34ab6923554e4e05f6b451c55e4d599d0383bc65825b62015b055a009c84"

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
