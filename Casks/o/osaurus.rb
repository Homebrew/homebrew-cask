cask "osaurus" do
  version "0.20.6"
  sha256 "407430a73911bdd58e8113d2c32483b27975c3da89706d91119567ab888f4edf"

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
