cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.2.38,202509032213"
  sha256  arm:   "6ea04d9b43ba8d94b947ec72bb1472b354a0c377ba422c870c9dc1282f14cc8a",
          intel: "21d2ca00b553e728faa132673a7a80a8cccddbd6732365c5326eb5630c1a4ff4"

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
