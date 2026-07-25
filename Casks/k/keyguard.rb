cask "keyguard" do
  arch arm: "apple", intel: "intel"

  version "2.14.2,20260616"
  sha256 arm:   "97ee8c91ff26b10d6622cba5d9675a1ec131f1461531da0d8d2c94f445e51c0c",
         intel: "192dbff236c5506f8defc07157855dc5e08a63c8485c9d9747b39ad40212a54e"

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

  depends_on :macos

  app "keyguard.app"

  zap trash: [
    "~/Library/Application Support/keyguard",
    "~/Library/Saved Application State/com.artemchep.keyguard.savedState",
  ]
end
