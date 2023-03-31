cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.42.0"
  sha256 arm:   "4df697548f28b4a0a7d17fbac16bb3be69a2288ad2b5467822cdfb954a78e3b3",
         intel: "057e174060e5bd11c377299a4ed6424705f750dd31ba579a53901c1fc91a4aba"

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
