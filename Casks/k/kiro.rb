cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.7.5"
  sha256  arm:   "102645de63970aeb1eb3131057dffa620e40a5af1a94ca14b1003bbea1095363",
          intel: "59220efdeda7485fa10930d99f247dd0253029896628fb36eb3fd0f507baa852"

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
