cask "ollama-usage-widget" do
  version "1.0.0"
  sha256 "17a9c204d4323df97514558cbf9c845089dea03ab4ae0a28ec4543e17355c475"

  url "https://github.com/AsharFatmi/ollama-usage-widget/releases/download/v#{version}/OllamaUsageWidget-#{version}.dmg"
  name "Ollama Usage Widget"
  desc "Track Ollama Cloud usage and local Ollama state from the menu bar"
  homepage "https://github.com/AsharFatmi/ollama-usage-widget"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "OllamaUsageWidget.app"

  uninstall quit: "com.asharfatmi.ollama-usage-widget"

  zap trash: [
    "~/.ollama-usage-widget",
    "~/.ollama-usage-widget.env",
    "~/Library/LaunchAgents/com.asharfatmi.ollama-usage-widget.plist",
    "~/Library/Preferences/com.asharfatmi.ollama-usage-widget.plist",
    "~/Library/Preferences/OllamaUsageWidget.plist",
  ]
end
