cask "osaurus" do
  version "1.0.2"
  sha256 "db312ac05bb6a9bf76b488b8f9da22369cc6ba7d5ca84e4baedd8af25c8d7eb6"

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

  app "Osaurus.app"
  binary "#{appdir}/Osaurus.app/Contents/Helpers/osaurus"

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
