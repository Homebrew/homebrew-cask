cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0,230416d1lkzhd17,2.3.0"
  sha256 arm:   "04e02e4df46e40d5fef4f20fdd9bf67b7eb1cdf173235d79baa302471af44a83",
         intel: "23da601ad1256ffbb9ec409173fac7b6b720651529e12369ce6ae4ab5ce94158"

  url "https://github.com/Dynobase/dynobase/releases/download/v#{version.csv.third}/Dynobase.#{version.csv.first}.-.Build.#{version.csv.second}-#{arch}.dmg",
      verified: "github.com/Dynobase/dynobase/"
  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Dynobase[._-](\d+(?:\.\d+)+)[._-]+Build[._-](\S+)[._-]#{arch}\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[3]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
