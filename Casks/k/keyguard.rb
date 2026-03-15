cask "keyguard" do
  arch arm: "apple", intel: "intel"

  version "2.6.0,20260315"
  sha256 arm:   "6415d0fcfdaaeb873aba48eda55ca9dbc0b90b1df7a84b9244550747f54d45aa",
         intel: "90886f32115ad2bf1199f135af6f36779b5a194e0e10b798b0acbdc90d19a2b1"

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
