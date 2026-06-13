cask "librecad" do
  arch arm: "-arm64"

  version "2.2.1.5"
  sha256 arm:   "0c6ce2e25a027ff3e921b74101d1c4e167687d2386fe0798f2f4c37d12deb436",
         intel: "34369e791af12e414d6e08c0954f679990706215a07b569a8eb7b9a6fa115f38"

  url "https://github.com/LibreCAD/LibreCAD/releases/download/v#{version.csv.first}/LibreCAD-v#{version.csv.second || version.csv.first}#{arch}.dmg",
      verified: "github.com/LibreCAD/LibreCAD/"
  name "LibreCAD"
  desc "CAD application"
  homepage "https://librecad.org/"

  livecheck do
    url :url
    regex(/^LibreCAD[._-]v?(\d+(?:[.-]\d+)+(?:-\d+-g\h+)?)#{arch}\.dmg$/i)
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

  depends_on macos: :big_sur

  app "LibreCAD.app"

  zap trash: [
    "~/Library/Application Support/LibreCAD",
    "~/Library/Preferences/com.librecad.LibreCAD.plist",
    "~/Library/Saved Application State/com.yourcompany.LibreCAD.savedstate",
  ]
end
