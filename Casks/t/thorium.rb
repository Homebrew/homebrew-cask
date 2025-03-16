cask "thorium" do
  arch arm: "-arm64"

  on_arm do
    version "3.1.1,3.1.0-1"
    sha256 "f2785f6ac4dd11659ccaf38f453485f4d3449cfaf79ee17c6409ea45d41a43fc"
  end
  on_intel do
    version "3.1.0"
    sha256 "b718cd726188f7ec7b215e4c12297a992e5471b87211bce66a7c5493641aedac"
  end

  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version.csv.first}/Thorium-#{version.csv.second || version.csv.first}#{arch}.dmg",
      verified: "github.com/edrlab/thorium-reader/"
  name "Thorium Reader"
  desc "Epub reader"
  homepage "https://www.edrlab.org/software/thorium-reader/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Thorium[._-]v?(\d+(?:[.-]\d+)+)#{arch}\.dmg}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  conflicts_with cask: "alex313031-thorium"
  depends_on macos: ">= :big_sur"

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/EDRLab.ThoriumReader",
    "~/Library/Preferences/io.github.edrlab.thorium.plist",
  ]
end
