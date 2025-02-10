cask "keyguard" do
  arch arm: "apple", intel: "intel"

  version "1.9.0,20250210"
  sha256 arm:   "3ad1d7eaded5e2e5881c1ac0259065d4d4a97f373c84f1143f83158cfb203899",
         intel: "6a1a5a5696e26b20dcd0f1e0174c15dc1ff91bd747e72dc1e0ef5a6b4aba5de8"

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
