cask "osaurus" do
  version "0.4.10"
  sha256 "fdfe4ede76b59d4dc4f88063f8eaf4ce2d99e19a17ec6ab8ffacf311d3b08f67"

  url "https://github.com/dinoki-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg",
      verified: "github.com/dinoki-ai/osaurus/"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Osaurus.app"
  binary "#{appdir}/Osaurus.app/Contents/MacOS/osaurus"

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
