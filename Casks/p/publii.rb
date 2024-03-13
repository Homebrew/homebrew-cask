cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.45.2"
  sha256 arm:   "6a86a25d89ebe5d3a0ef9bbc8f9ce4d500dc5e5f2c8c0d679c6164a0a233a399",
         intel: "5171a66b7293ae598fb133a8bf0a7d3f396987cbd0271ab6bbf449c16c66b22a"

  url "https://cdn.getpublii.com/Publii-#{version}-#{arch}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    regex(/href=.*?Publii[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg/i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
