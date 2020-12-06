cask "pushplaylabs-sidekick" do
  version "87.7.36.5759"
  sha256 "0db4e8414ba3d3e86768c23625fa691ab6105383d7844e8c50f33a66a222fbe9"

  url "https://api.meetsidekick.com/downloads/df/mac"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  app "Sidekick.app"

  zap trash: [
    "~/Library/Preferences/com.pushplaylabs.sidekick.plist",
    "~/Library/Application Support/Sidekick",
    "~/Library/Caches/Sidekick",
    "~/Library/Saved Application State/com.pushplaylabs.sidekick.savedState",
  ]
end
