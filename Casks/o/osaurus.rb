cask "osaurus" do
  version "0.21.10"
  sha256 "7e56c3ffabdc9c63f79eb7e1ebc6bce3b9f4a8dab5cf6fbf21d20e9222e8de70"

  url "https://github.com/osaurus-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg",
      verified: "github.com/osaurus-ai/osaurus/"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Osaurus.app"
  binary "#{appdir}/Osaurus.app/Contents/Helpers/osaurus"

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
