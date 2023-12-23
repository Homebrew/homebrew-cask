cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.44.2"
  sha256 arm:   "d0e383bcf0d2ac660b63730a10d9907bf5f92d9d35378e33fa956438b2601fdf",
         intel: "28048ec00ff213c402a974f265eb12959bb88a51149b871e4dcbfbfd9de2dd11"

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
