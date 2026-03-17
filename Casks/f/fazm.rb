cask "fazm" do
  version "0.9.0,56"
  sha256 "fc4d8568ed434d619de96edd71a6d536894cb0eaf51096f346ae630ec31a9f04"

  url "https://github.com/m13v/fazm/releases/download/v#{version.csv.first}%2B#{version.csv.second}-macos-staging/Fazm.dmg",
      verified: "github.com/m13v/fazm/"
  name "Fazm"
  desc "Open-source voice-controlled AI agent"
  homepage "https://fazm.ai/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)\+(\d+)-macos-staging/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Fazm.app"

  zap trash: [
    "~/Library/Application Support/com.fazm.app",
    "~/Library/Caches/com.fazm.app",
    "~/Library/Preferences/com.fazm.app.plist",
    "~/Library/Saved Application State/com.fazm.app.savedState",
  ]
end
