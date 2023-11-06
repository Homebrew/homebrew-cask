cask "celestia" do
  version "1.6.4"
  sha256 "bfb0d0070be9a240a9e3df39495a43223a18dc7757f523ba71dbe8f0bdcaf9e3"

  url "https://github.com/CelestiaProject/Celestia/releases/download/#{version}/celestia-#{version}-macOS.zip"
  name "Celestia"
  desc "Space simulation for exploring the universe in three dimensions"
  homepage "https://github.com/CelestiaProject/Celestia/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^celestia[._-]v?(\d+(?:\.\d+)+)[._-]?(macOS)?\.(?:dmg|pkg|zip)$/i)
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

  app "Celestia.app"

  zap trash: [
    "~/Library/Application Scripts/space.celestia.Celestia",
    "~/Library/Containers/space.celestia.Celestia",
  ]
end
