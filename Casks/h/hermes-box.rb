cask "hermes-box" do
  version "0.1.0"
  sha256 "a6c9d88f6becb8a0a52c23f9cff4ae13a7518a64aaf9848c53e0c3f25b391c8b"

  url "https://github.com/BotonJ/Hermes-Box/releases/download/v#{version}/HermesBox_#{version}_aarch64.dmg"
  name "HermesBox"
  desc "Cross-platform desktop panel for AI CLIs"
  homepage "https://github.com/BotonJ/Hermes-Box"

  depends_on macos: ">= :ventura"

  app "HermesBox.app"

  zap trash: [
    "~/Library/Application Support/com.hermesbox.app",
    "~/Library/Caches/com.hermesbox.app",
    "~/Library/LaunchAgents/com.hermesbox.app*.plist",
    "~/Library/Preferences/com.hermesbox.app.plist",
  ]

  caveats <<~EOS
    On first launch, right-click the app and select "Open" to bypass Gatekeeper.
  EOS
end
