cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.6.18"
  sha256  arm:   "c8b908c277d7ccf16d1da1dabc2cf151f83b0e7c3bc2c636bd4a4694caf7d61e",
          intel: "40b44327d6488ecdd3edb37b0e74dfc076f2af38bfdc7ac30b98ca1221cf4374"

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
