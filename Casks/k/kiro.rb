cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256  arm:   "1f9004420bc6d49b4151551a429d9c60b929c4e81a65d6e555458b0a8d07c1e5",
          intel: "dc17f96bef72c385b20b2d400e7eb86289a48c7e10afbc063ced2431577c6733"

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
