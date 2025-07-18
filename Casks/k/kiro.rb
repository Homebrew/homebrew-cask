cask "kiro" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.1.15,202507180224"
    sha256  "93813754f85d649ce2038ed318c7e80dc38ee24977391951316f64887c66509f"
  end
  on_intel do
    version "0.1.15,202507180243"
    sha256  "7573b2f09f2b1749c51e363eb30cb92570e8e66d5d919817b0434df5ffcdc7da"
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
