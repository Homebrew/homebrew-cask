cask "osaurus" do
  version "0.4.0"
  sha256 "1b01a64916efac2e1e2001f6f909a2283e24855c14a84aa2e3463f96e862f3b4"

  url "https://github.com/dinoki-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg",
      verified: "github.com/dinoki-ai/osaurus/"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "osaurus.app"
  binary "#{appdir}/osaurus.app/Contents/MacOS/osaurus"

  zap trash: [
    "~/Library/Application Support/com.dinoki.osaurus",
    "~/Library/Application Support/Osaurus",
    "~/Library/Caches/com.dinoki.osaurus",
    "~/Library/HTTPStorages/com.dinoki.osaurus",
    "~/Library/Preferences/ai.dinoki.osaurus.plist",
    "~/Library/Saved Application State/ai.dinoki.osaurus.savedState",
    "~/MLXModels",
  ]
end
