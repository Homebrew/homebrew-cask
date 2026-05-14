cask "hermes-box" do
  version "0.1.0"
  sha256 "74e0410f3fbd1c93bb6dbe5a99f59f3a07bbbfa09408a3921f35c3b148976702"

  url "https://github.com/BotonJ/Hermes-Box/releases/download/v#{version}/HermesBox-#{version}.tar.gz"
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
