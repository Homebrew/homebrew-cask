cask "pangolin" do
  version "0.5.0"
  sha256 "c701353617df1976cb2592f60c62d02e678d371e10c2885027c9737c715ae7dd"

  url "https://pangolin.net/api/downloads/proxy?url=https%3A%2F%2Fgithub.com%2Ffosrl%2Fapple%2Freleases%2Fdownload%2Fmac-#{version}%2FPangolin_Installer_#{version}.dmg"
  name "Pangolin"
  desc "Identity-aware VPN and proxy for remote access"
  homepage "https://pangolin.net/"

  # Not every GitHub release provides a macOS DMG, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url "https://github.com/fosrl/apple/releases"
    regex(/^Pangolin[._-]Installer[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
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

  depends_on macos: ">= :sonoma"

  app "Pangolin.app"
end
