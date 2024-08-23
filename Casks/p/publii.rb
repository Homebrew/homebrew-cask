cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.1"
  sha256 arm:   "72f0520e219dd34593f76b0ba6394b88e0d1b4c8158cc699bee9afc118c6d9ab",
         intel: "0b2dfc2ab5f8d9a6244789acbcbd499059e8dcc76376d3fea371ad6371970c2f"

  url "https://getpublii.com/download/Publii-#{version}-#{arch}.dmg"
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
