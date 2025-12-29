cask "osaurus" do
  version "0.6.6"
  sha256 "c4e6cc91395bd2ec7b334fafaf6cd756254140921a4858af99f25dc4145b17b7"

  url "https://github.com/dinoki-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg",
      verified: "github.com/dinoki-ai/osaurus/"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  depends_on macos: ">= :sequoia"
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
