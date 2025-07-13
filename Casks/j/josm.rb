cask "josm" do
  arch arm: "-aarch64"
  app_arch = on_arch_conditional arm: "_24_arm64"

  on_arm do
    version "19423"
    sha256 "346f21f28b1ee68a746a38bcadd477222dcf28a20adf71c0d86eae33e9d2d882"

    livecheck do
      url :url
      regex(/\D*?(\d+(?:\.\d+)*)/i)
      strategy :github_latest
    end
  end
  on_intel do
    version "19412"
    sha256 "7435e1409200095b7e74685691ce794d3a3934f4d3fce5adf6cc505e70e2fbe5"

    # Not every GitHub release provides a file for both architectures, so we check
    # multiple recent releases instead of only the "latest" release.
    livecheck do
      url :url
      regex(/^JOSM[._-]macos[._-]java24[._-]v?(\d+(?:\.\d+)*)#{arch}\.zip$/i)
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
  end

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java24-#{version}#{arch}.zip",
      verified: "github.com/JOSM/josm/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  app "JOSM#{app_arch}.app"

  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
