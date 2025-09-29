cask "osaurus" do
  version "0.1.2"
  sha256 "2a6e6483e3121d03547774660d0bdc8adffda8aa2f5a1c10d1799c7ccf833ba2"

  url "https://github.com/dinoki-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg",
      verified: "github.com/dinoki-ai/osaurus/"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "osaurus.app"

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
