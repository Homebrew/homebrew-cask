cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.11.130"
  sha256  arm:   "046cb6c9e56535e3ccb2aa3425158d5830b49732f5d646416912592c72c34b22",
          intel: "4fb7dfef96bccacdaffa1c109d3e2fd606d7b1a9efe477b99a6c552087a8e589"

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
