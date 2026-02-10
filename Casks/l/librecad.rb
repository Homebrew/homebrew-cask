cask "librecad" do
  arch arm: "-arm64"

  version "2.2.1.3,2.2.1.3-2-g1598766fb"
  sha256 arm:   "b1c7f4559bccc3dd21aff089eef5a72c7fd8cd807340ff81aa46c960ca2e7385",
         intel: "5253704089d7e505f770cf618bd4b9366d9fdfb98c8ad3d4fed02db7c09c082b"

  url "https://github.com/LibreCAD/LibreCAD/releases/download/v#{version.csv.first}/LibreCAD-v#{version.csv.second || version.csv.first}#{arch}.dmg",
      verified: "github.com/LibreCAD/LibreCAD/"
  name "LibreCAD"
  desc "CAD application"
  homepage "https://librecad.org/"

  livecheck do
    url :url
    regex(/^LibreCAD[._-]v?(\d+(?:[.-]\d+)+(?:-\w+)?)#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        tag = release["tag_name"]&.delete_prefix("v")

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next tag if match.blank?

          (match[1] == tag) ? tag : "#{tag},#{match[1]}"
        end
      end.flatten
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "LibreCAD.app"

  zap trash: [
    "~/Library/Application Support/LibreCAD",
    "~/Library/Preferences/com.librecad.LibreCAD.plist",
    "~/Library/Saved Application State/com.yourcompany.LibreCAD.savedstate",
  ]
end
