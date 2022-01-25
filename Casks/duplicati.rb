cask "duplicati" do
  version "2.0.6.100,canary,2021-08-11"
  sha256 "434cdedbd15b3562cf943b55114515b7b00bdaa1cccf06ea22b9f625bd3f0a02"

  url "https://github.com/duplicati/duplicati/releases/download/v#{version.csv.first}-#{version.csv.first}_#{version.csv.second}_#{version.csv.third}/duplicati-#{version.csv.first}_#{version.csv.second}_#{version.csv.third}.dmg",
      verified: "github.com/duplicati/duplicati/"
  name "Duplicati"
  desc "Store securely encrypted backups in the cloud"
  homepage "https://www.duplicati.com/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(/^v(\d+(?:\.\d+)+)-(?:\d+(?:\.\d+)+)_(beta|canary|experimental)_(\d+(?:-\d+)*)$/i)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}" if match
      end.compact
    end
  end

  depends_on formula: "mono"

  app "Duplicati.app"

  zap trash: [
    "~/.config/Duplicati",
    "~/Library/Application Support/Duplicati",
  ]
end
