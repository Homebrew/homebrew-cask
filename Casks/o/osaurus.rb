cask "osaurus" do
  version "0.3.8"
  sha256 "00823732b2af5ac10ab8ebed291a936525ff8a36959c2d295a08e1ad2eef5a8d"

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
