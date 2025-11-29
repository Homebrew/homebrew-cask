cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.6.32"
  sha256  arm:   "a1d0bd7cd24854ab30bab793e67f913624502c17a41845a4e466773e8d01cd67",
          intel: "94ffbeb7a5ee0ebf03a522e18f844642aa676c1c90049534329ca25f5898102c"

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
