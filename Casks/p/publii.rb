cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.45.0"
  sha256 arm:   "4ed781ff48475f4b2c3fddf95e1daa5c891f81dbb4c71c792580708fbacf1fac",
         intel: "ee3d418451443df82aa5d2768bfb5f71008a3226d7753c3c75f5737e4faca565"

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
