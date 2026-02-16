cask "osaurus" do
  version "0.10.7"
  sha256 "348d73703a512b276178fe53aae0c9c72e28bed468f9e45be6e78a23d98095e8"

  url "https://github.com/dinoki-ai/osaurus/releases/download/#{version}/Osaurus-#{version}.dmg",
      verified: "github.com/dinoki-ai/osaurus/"
  name "Osaurus"
  desc "LLM server built on MLX"
  homepage "https://osaurus.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
