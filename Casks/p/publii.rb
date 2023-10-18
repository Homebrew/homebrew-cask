cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.43.1"
  sha256 arm:   "f61a6429d867d71b21cd05a0f8a8bb8448e939eef23e4266c2194083b09df3a8",
         intel: "f957bfa81cd9387c5d721404ac6bce096bed13c1e2a7da4cadc00eb6c0210324"

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
