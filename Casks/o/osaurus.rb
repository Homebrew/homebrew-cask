cask "osaurus" do
  version "0.25.9"
  sha256 "ccec3ca03052f65b7000adb662f3801fbbe1db715ef7a910e720701782a06106"

  url "https://github.com/osaurus-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "osaurus.app"
  binary "#{appdir}/osaurus.app/Contents/Helpers/osaurus"

  uninstall quit: "com.dinoki.osaurus"

  zap trash: [
    "~/Library/Application Support/com.dinoki.osaurus",
    "~/Library/Application Support/Osaurus",
    "~/Library/Caches/com.dinoki.osaurus",
    "~/Library/HTTPStorages/com.dinoki.osaurus",
    "~/Library/Logs/Osaurus",
    "~/Library/Preferences/com.dinoki.osaurus.plist",
    "~/Library/Saved Application State/com.dinoki.osaurus.savedState",
    "~/MLXModels",
  ]
end
