cask "kiro" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.1.25,202507232015"
    sha256  "190e34662ac3f8c107712e81ee2ef1974c1808fb29be8911accb83ddea9940ce"
  end
  on_intel do
    version "0.1.25,202507232041"
    sha256  "747f9a43c20aa860b44cb325390164ed46212f9fdd5923b02d70f8d7b6c1a569"
  end

  url "https://prod.download.desktop.kiro.dev/releases/#{version.csv.second}-Kiro-dmg-darwin-#{arch}.dmg"
  name "kiro"
  desc "Agent-centric IDE with spec-driven development"
  homepage "https://kiro.dev/"

  livecheck do
    url "https://prod.download.desktop.kiro.dev/stable/metadata-dmg-darwin-#{arch}-stable.json"
    regex(/(\d+)[._-]Kiro/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        version = release.dig("updateTo", "version")
        match = release.dig("updateTo", "url")&.match(regex)
        next if version.blank? || match.blank?

        "#{version},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "Kiro.app"

  zap trash: [
    "~/Library/Application Support/Kiro",
    "~/Library/Preferences/dev.kiro.desktop.plist",
    "~/Library/Saved Application State/dev.kiro.desktop.savedState",
  ]
end
