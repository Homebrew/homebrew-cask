cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0"
  sha256 arm:   "a457775cbe48ff05a455af5635931722caa94f460798fa935e54a8bf8e13b67e",
         intel: "fd7f577f8cb7d5ebaf9fddfb1f6b5529ee386360d14093edc0683d6150277918"

  url "https://github.com/marcus-crane/october/releases/download/v#{version}/october_#{version}_darwin_#{arch}.zip",
      verified: "github.com/marcus-crane/october/"
  name "October"
  desc "GUI for retrieving Kobo highlights and syncing them with Readwise"
  homepage "https://october.utf9k.net/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^october[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip$/i)
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

  depends_on macos: ">= :high_sierra"

  app "October.app"

  zap trash: "~/Library/Application Support/october"
end
