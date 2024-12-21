cask "keyguard" do
  arch arm: "apple", intel: "intel"

  version "1.7.1,20241221"
  sha256 arm:   "ac96f5a5d5060b6fd4218c31bee1ad7f83e7d14fb3d6b1e0c87e08789534b6e3",
         intel: "e5a2341db880641fa4d8c3cefaf49e531c33f5c77f36062d1e94f86ec8f24c42"

  url "https://github.com/AChep/keyguard-app/releases/download/r#{version.csv.second}/Keyguard-#{version.csv.first}-#{arch}.dmg"
  name "Keyguard"
  desc "Client for the Bitwarden platform"
  homepage "https://github.com/AChep/keyguard-app"

  livecheck do
    url :url
    regex(%r{/r?(\d+(?:\.\d+)*)/Keyguard[._-](\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "keyguard.app"

  zap trash: [
    "~/Library/Application Support/keyguard",
    "~/Library/Saved Application State/com.artemchep.keyguard.savedState",
  ]
end
