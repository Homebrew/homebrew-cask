cask "celestia" do
  version "1.6.3"
  sha256 "67d22ea5b74c341b5f096591c61e4df3a861b295b5f1a1818b3c6da7ffc11caa"

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
