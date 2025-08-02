cask "kiro" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.1.42,202508020230"
    sha256  "6011e7166a157eb9787211248fd6013f669467883d518f408b180214a5791555"
  end
  on_intel do
    version "0.1.42,202508020251"
    sha256  "f0fe7ad8de9be0fc8d6203480b2ae5571a619108d776ff345445ed93bd6269b1"
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
