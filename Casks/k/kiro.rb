cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.2.59,202509172055"
  sha256  arm:   "e71bc3a0631d4bfa2f2ca27d804f927a0fd9b692d71d0edbefc81fd2db9951a8",
          intel: "93038da0b6c807a62f02b8b0245e6afbc9e246ccba71faf61f5f03e216b717b0"

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

  app "Kiro.app"

  zap trash: [
    "~/Library/Application Support/Kiro",
    "~/Library/Preferences/dev.kiro.desktop.plist",
    "~/Library/Saved Application State/dev.kiro.desktop.savedState",
  ]
end
