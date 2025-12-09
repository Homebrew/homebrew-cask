cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.7.34"
  sha256  arm:   "937083354174fceb8c7eca1c80bfd2833ab31c0a0fae135d46cdcc486ba51fce",
          intel: "7cac9160a71cd1b42336c913d57c8173a349a8ebc6317cf80f766b372a42b332"

  url "https://prod.download.desktop.kiro.dev/releases/stable/darwin-#{arch}/signed/#{version}/kiro-ide-#{version}-stable-darwin-#{arch}.dmg"
  name "kiro"
  desc "Agent-centric IDE with spec-driven development"
  homepage "https://kiro.dev/"

  livecheck do
    url "https://prod.download.desktop.kiro.dev/stable/metadata-dmg-darwin-#{arch}-stable.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        release.dig("updateTo", "version")
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Kiro.app"

  zap trash: [
    "~/Library/Application Support/Kiro",
    "~/Library/Preferences/dev.kiro.desktop.plist",
    "~/Library/Saved Application State/dev.kiro.desktop.savedState",
  ]
end
