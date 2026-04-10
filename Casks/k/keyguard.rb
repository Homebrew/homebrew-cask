cask "keyguard" do
  arch arm: "apple", intel: "intel"

  version "2.8.0,20260410"
  sha256 arm:   "13de3b82c398ac9c3d1c31eeeead7db1ac7274ddeee4bb79b93bc95401a06ed5",
         intel: "ab082af651af18d5437ebb09277caee7b9bd7e93df3aeb53766b84430c8b57de"

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

  app "keyguard.app"

  zap trash: [
    "~/Library/Application Support/keyguard",
    "~/Library/Saved Application State/com.artemchep.keyguard.savedState",
  ]
end
