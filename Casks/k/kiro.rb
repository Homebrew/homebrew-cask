cask "kiro" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.1.6,202507152330"
    sha256  "e0dea023a44fdad15ec49ae3b1a93281b078d95cb681cabb7aaef385dea5fa4b"
  end
  on_intel do
    version "0.1.6,202507152349"
    sha256  "0c61856f6af3fcf55fb115607445311818f0e7e9524bf7b1a68888e99692104e"
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
