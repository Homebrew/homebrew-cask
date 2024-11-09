cask "quodlibet" do
  version "4.4.0"
  sha256 "e06e1026e57699b6533fa0787da404c3dfdd3056eefcfcfce7a4a5be7f67b081"

  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/QuodLibet-#{version}.dmg",
      verified: "github.com/quodlibet/quodlibet/"
  name "Quod Libet"
  desc "Music player and music library manager"
  homepage "https://quodlibet.readthedocs.io/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^QuodLibet[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
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

  app "QuodLibet.app"

  zap trash: [
    "~/.quodlibet",
    "~/Library/Preferences/io.github.quodlibet.quodlibet.plist",
    "~/Library/Saved Application State/io.github.quodlibet.quodlibet.savedState",
  ]
end
