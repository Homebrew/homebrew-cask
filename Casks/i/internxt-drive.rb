cask "internxt-drive" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "22d8076850f6834cbf3c22d07dcc9e916478c1ce8464464827e55fbcac7c2788",
         intel: "0a218560e645a99d65c052597ab125a148c93827bf27b5c2060213c6127418e5"

  url "https://github.com/internxt/drive-desktop/releases/download/v#{version}/internxt-drive-#{version}#{arch}.dmg",
      verified: "github.com/internxt/drive-desktop/"
  name "Internxt Drive"
  desc "Client for Internxt file storage service"
  homepage "https://internxt.com/drive"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Internxt[._-]Drive[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Internxt Drive.app"

  zap trash: [
    "~/.internxt-desktop",
    "~/Library/Application Support/internxt-drive",
    "~/Library/Logs/Internxt Drive",
    "~/Library/Logs/internxt-drive",
    "~/Library/Preferences/com.internxt.drive.plist",
  ]
end
