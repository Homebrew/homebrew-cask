cask "osaurus" do
  version "0.4.5"
  sha256 "70f49a64e0937784445edef260f283ceb76e7398b88b8c04c4f170a2f019a572"

  url "https://github.com/dinoki-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg",
      verified: "github.com/dinoki-ai/osaurus/"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Osaurus.app"
  binary "#{appdir}/Osaurus.app/Contents/MacOS/Contents/Helpers/osaurus"

  uninstall quit: "com.dinoki.osaurus"

  zap trash: [
    "~/Library/Application Support/com.dinoki.osaurus",
    "~/Library/Application Support/Osaurus",
    "~/Library/Caches/com.dinoki.osaurus",
    "~/Library/HTTPStorages/com.dinoki.osaurus",
    "~/Library/Preferences/com.dinoki.osaurus.plist",
    "~/Library/Saved Application State/com.dinoki.osaurus.savedState",
    "~/MLXModels",
  ]
end
