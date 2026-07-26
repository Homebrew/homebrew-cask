cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "1.0.228"
  sha256  arm:   "87d459b32f45a5fbad0e9faccff0cdecfcefbdc2fff136fddd75021549a79c26",
          intel: "81e9270d7d3e002603a1b77a72b81610e0e35c2e232beb60ec04e645057cba19"

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
  depends_on macos: :monterey

  app "Kiro.app"
  binary "#{appdir}/Kiro.app/Contents/Resources/app/bin/code", target: "kiro"

  zap trash: [
    "~/Library/Application Support/Kiro",
    "~/Library/Preferences/dev.kiro.desktop.plist",
    "~/Library/Saved Application State/dev.kiro.desktop.savedState",
  ]
end
