cask "librecad" do
  arch arm: "-arm64"

  version "2.2.1.4,2.2.1.3-12-gd1ca469c9"
  sha256 arm:   "32e50dd71461745d2563224eeab9df0a0a26c5cf99e3b8498937c2e41ce2ec56",
         intel: "74e4f8c000f55eebe4da0fc10b1a7b6c868ce68918acddc8b8b5ab3ee8486f05"

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
