cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.11.63"
  sha256  arm:   "832e751ddaea1771e76a9f6e4e2ad1ef340cc04ad751b922ed87d673024d8c11",
          intel: "52405fbad4412f57e78131fdda4c87caeaca142f21543704f7d3308f9d806b5d"

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

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Kiro.app"
  binary "#{appdir}/Kiro.app/Contents/Resources/app/bin/code", target: "kiro"

  zap trash: [
    "~/Library/Application Support/Kiro",
    "~/Library/Preferences/dev.kiro.desktop.plist",
    "~/Library/Saved Application State/dev.kiro.desktop.savedState",
  ]
end
